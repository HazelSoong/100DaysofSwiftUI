import UIKit

//Variables
var a = "Hello"
var b: String = "Hello"

//Constant
let c = "World"

//MARK: String
//换行
let d = """
World
Hello
"""

//串联
let f = a + "and" + b
let e = "\(a) and \(b)" //这样写，即使b是Int也可以直接被转成String
//*如果需要swift读取数据，不用（），如果需要swift为你工作，就需要（）
print(a.count) //——>显示a 有几个字符
print(b.uppercased())// ——>将b的字符变成大写
print(a.hasPrefix("H"))
//——>它让我们知道字符串是否以我们选择的某些字母开头
print(e.hasSuffix(".jpg")) //——>检查字符串是否以某些文本结尾

//MARK: Int
let number = 12
print(number.isMultiple(of: 3 ))
//——>问12是不是3的倍数，返回True

//MARK: Double
let j = 1
let g = 2.0
let h = j+Int(g)
let i = Double(j)+g

//*用稍微不同的存储十进制数的方式: CGFloat

//复合值运算符compound assignment operators
var k = 10
//不写成 a = a + 5
//直接写
k += 5
//因此可
k*=5
k-=5
k/=5

//MARK: checkpoint 1 保留小数点
  let celsius = 23.32342342
        let celsius1 = String(format: "%.2f", celsius)
        let fahrenheit = celsius * 9.00 / 5.00 + 32.00
        let fahrenheit1 = String(format: "%.2f", fahrenheit)
        print("the celsius is \(celsius1) °C and the fahrenheit is \(fahrenheit1)°F")

//MARK: Booleans
var gameOver = false
gameOver.toggle()//一个反转
print(gameOver) //——>在调用之后toggle()打印 true

//MARK: array
var beatles = ["www","3333"]
//从0开始计数
print(beatles[0])
//Others type of written
var albums: [String] = ["aaa"]
var scores = Array<Int>()
var album = [String]()//使用推断

//添加数组内容
beatles.append("aaa")
scores.append(10)

//读取数组中有多少项—count
print(albums.count)

//删除—remove(at:)/removeAll()
beatles.remove(at:2)  //这是删除第3项
scores.removeAll() //这是删除成空的数组

//检查是否有某个元素—contains()
album.contains("aaa")

//排序—sorted()—String用字母顺序，数字从小到大，但原数组顺序不变
scores.sorted()

//反转数组reversed()—swift会在写入时记住顺序，建立一个reverse的数组
scores.reversed()

//MARK: Dictionary--命名数组中的元素
let employee1 = [
"name": "Angela Chang",
"job": "Singer",
"location": "Taiwan"
]//：前后也可以使用Int，Booleans
print(employee1["name", default: "Unknown"])

//另一种格式—先创建一个空的dictionary，再写入内容
var heights = [String: Int] ()
heights["Yao"] = 229

//MARK: Set—不可以添加重复的内容，不会按照顺序写入
let people = Set( ["aaa","bbb"] )

//另一种格式
var singer = Set<String>( )
singer.insert("aaa")

//MARK: Enums— enumeration 给一些特殊数组提前设定特定值
enum Weekday{

        case Monday
        case Tuesday
        case Wednesday
        case Thursday
        case Friday

}

//Another written format
enum Month {
         case Monday, Tuesday, Wednesday, Thursday, Friday
}

//How to use enum?
var day = Weekday.Monday
      day = .Tuesday
//enums comparable比大小
enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)//That will print “true”, because small comes before large in the enum case list.


//MARK: check point2
//create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.
//Hint:Sets can be made from arrays using Set(someArray)

var sports = ["run","jump","swiming","run"]
print(sports.count)
let single = Set(sports)
print(single.count)

//MARK: if
// ><=也可以用于String
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"
if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}
else {
    print("It's \(friendName) vs \(ourName)")
}
//向数组中添加一个数字使其包含超过 3 个项目，则删除最旧的一个。

var numbers = [1, 2, 3]// Make an array of 3 numbers
numbers.append(4)// Add a 4th
if numbers.count > 3 // If we have over 3 items
{
    numbers.remove(at: 0)// Remove the oldest number
}
print(numbers)// Display the result

//== and means “is equal to,”
let country = "Canada"
if country == "Australia" {
    print("G'day!")
}

//!=, which means “is not equal to”,
let name = "Taylor Swift"
if name != "Anonymous" {
    print("Welcome, \(name)")
}

//empty的四种写法
var username = "taylorswift13"
if username == ""{
    username = "Anonymous"
}

if username.count == 0 {
    username = "Anonymous"
}//这个出结果太慢

if username.isEmpty == true {
    username = "Anonymous"
}//==true是默认，可以省略

if username.isEmpty {
    username = "Anonymous"
}

//multiple conditions
//&&同时满足两个条件
//||表示或者
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
//同时使用&&和||条件超过三个，要用（）
// regular users can delete messages only we allowed them, but admins can always delete posts.
var isOwner = true
var isEditingEnabled = true
var isAdmin = true
if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}
//以上案例重复语句很多，而且认为输入容易check多次相同条件
//MARK: switch -- 不可重复，不可省略
enum Weather {
    case sun, rain, wind, snow, unknown
}
let forecast = Weather.sun
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

//default，swift如果检查到满足条件的选项就不会继续进行了
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

//fallthrough及时检查到合适的条件，仍然执行完全部条件
let Xday = 5
print("My true love gave to me…")

switch Xday {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//三元运算MARK: ternary conditional operator for quick tests
//WTF--What，True，False--？之前是条件判断是否为true，：之前是true的结果，：之后是False结果
//用于单一变量
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")
//用于数组
let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)
//用于枚举
enum Theme {
    case light, dark
}
let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)
//print里面不能有逻辑

//MARK: Loop
//在数组中循环
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for name in platforms {
    print("Swift works great on \(name).")
}

//在固定范围的数字循环
for l in 1...2{//1...2包括1和2，如果是1..<2就只有1
print( l )
    
}//这里的l是循环变量，只在这个循环中使用,可以用_代替，如果不需要特别使用循环变量

let namess = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in namess {
   print("[CENSORED] is a secret agent!")
}

//1...
let namesss = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[0])//第一个数组
print(namesss[1...])//第二个到末尾
//常量循环
let count = 1...3
for _ in count {
    print("There's no place like home.")
}

//MARK: while，循环会不断地执行循环体，直到条件为假。
//随机在范围内建立一个常量
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)
//for用作有限循环，当您需要自定义条件时，while非常有用
// create an integer to store our roll
var roll = 0
// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

var mnumber: Int = 10
while mnumber > 0 {
    mnumber -= 2
    if mnumber % 2 == 0 {//%是余数为0
        print("\(mnumber) is an even number.")
    }
}

//MARK: Exiting Loop--continue or break
//continue是跳过这个不合要求的条件，继续进行后面的， break是停止，不进行后续循环
//continue
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}
//break
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

//MARK: checkpoint 3
//The problem is called fizz buzz, and has been used in job interviews, university entrance tests, and more for as long as I can remember. Your goal is to loop from 1 through 100, and for each number: If it’s a multiple of 3, print “Fizz”, If it’s a multiple of 5, print “Buzz”, If it’s a multiple of 3 and 5, print “FizzBuzz”, Otherwise, just print the number.
//错题：直接顺序套现循环，变量3&&5的倍数被打印了两遍
var zz = 1...100
for zzn in zz{
    if zzn.isMultiple(of: 3){
        if zzn.isMultiple(of: 5){
            print("\(zzn) should print FizzBuzz")
        } else {
            print("\(zzn) should print Fizz")
        }
    }else if zzn.isMultiple(of: 5){
                print("\(zzn) should print Buzz")
        }
       else {print("\(zzn) should print \(zzn)")
           
       }
       }
    
    

