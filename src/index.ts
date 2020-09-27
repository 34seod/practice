let c: {
  firstName: string
  lastName: string
} = {
  firstName: 'aaa',
  lastName: 'bbb'
}

class Person {
  constructor(
    public firstName: string,
    public lastName: string
  ) {}
}

c = new Person('aaa', 'bbb')

let a: {
  b: number
  c?: string
  [key: number]: boolean
}

a = { b: 1 }
a = { b: 1, c: undefined }
a = { b: 1, c: 'd' }
a = { b: 1, 10: true}
a = { b: 1, 10: false, 11: true }

let user: {
  readonly firstName: string
}

user = { firstName: 'aaa' }
// user.firstName = 'bbb'

let d: { twice(tt: number): number } = { twice(tt: number) { return tt * 3 } }
// let e: Object = { toString() { return 3 } }
// let f: object = { toString() { return 3 } }
console.log(d.twice(3))