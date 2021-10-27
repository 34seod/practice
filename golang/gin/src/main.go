package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	router.LoadHTMLGlob("templates/*")

	router.GET("/", func(c *gin.Context) {
		c.HTML(
			http.StatusOK,
			"index.html",
			gin.H{
				"title": "Home Page",
			},
		)
	})

	router.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "ping",
		})
	})
	router.GET("/pong", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})

	router.Run()
}
