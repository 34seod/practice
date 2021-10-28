package main

import (
	"fmt"
	"net/http"
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
)

type Meigen struct {
	gorm.Model
	Meigen string
}

func main() {
	db := sqlConnect()
	db.AutoMigrate(&Meigen{})
	defer db.Close()

	router := gin.Default()

	router.GET("/meigens", func(c *gin.Context) {
		db := sqlConnect()
		defer db.Close()

		var results []Meigen
		db.Order("created_at asc").Find(&results)

		meigens := []Meigen{}
		meigens = append(meigens, results...)
		// for _, v := range results {
		// 	meigens = append(meigens, v)
		// }

		c.JSON(http.StatusOK, gin.H{"meigens": meigens})
	})

	router.GET("/meigens/:id", func(c *gin.Context) {
		db := sqlConnect()
		defer db.Close()

		n := c.Param("id")
		id, err := strconv.Atoi(n)
		if err != nil {
			panic("id is not a number")
		}
		var meigen Meigen
		if db.First(&meigen, id).RecordNotFound() {
			c.JSON(http.StatusNotFound, "Not Found")
		} else {
			c.JSON(http.StatusOK, meigen)
		}
	})

	router.PUT("/meigens/:id", func(c *gin.Context) {
		db := sqlConnect()
		defer db.Close()

		n := c.Param("id")
		id, err := strconv.Atoi(n)
		if err != nil {
			panic("id is not a number")
		}
		var req Meigen
		c.BindJSON(&req)

		var meigen Meigen

		if db.Where("ID=?", id).Find(&meigen).RecordNotFound() {
			c.JSON(http.StatusNotFound, "Not Found")
		} else {
			meigen.Meigen = req.Meigen
			db.Save(&meigen)
			c.JSON(http.StatusOK, meigen)
		}
	})

	router.POST("/meigens", func(c *gin.Context) {
		db := sqlConnect()
		defer db.Close()

		var req Meigen
		c.BindJSON(&req)

		meigen := &Meigen{Meigen: req.Meigen}
		db.Create(meigen)

		c.JSON(http.StatusOK, meigen)
	})

	router.DELETE("/meigens/:id", func(c *gin.Context) {
		db := sqlConnect()
		defer db.Close()

		n := c.Param("id")
		id, err := strconv.Atoi(n)
		if err != nil {
			panic("id is not a number")
		}

		var meigen Meigen
		if db.First(&meigen, id).RecordNotFound() {
			c.JSON(http.StatusNotFound, "Not Found")
		} else {
			db.Delete(&meigen)
			c.JSON(http.StatusOK, meigen)
		}
	})

	router.Run()
}

func sqlConnect() (database *gorm.DB) {
	DBMS := "mysql"
	USER := "usr"
	PASS := "password"
	PROTOCOL := "tcp(db:3306)"
	DBNAME := "db"

	CONNECT := USER + ":" + PASS + "@" + PROTOCOL + "/" + DBNAME + "?charset=utf8&parseTime=true&loc=Asia%2FTokyo"

	count := 0
	db, err := gorm.Open(DBMS, CONNECT)
	if err != nil {
		for {
			if err == nil {
				fmt.Println("")
				break
			}
			fmt.Print(".")
			time.Sleep(time.Second)
			count++
			if count > 180 {
				fmt.Println("")
				panic(err)
			}
			db, err = gorm.Open(DBMS, CONNECT)
		}
	}

	return db
}
