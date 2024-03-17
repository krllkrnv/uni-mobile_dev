import kotlinx.coroutines.*
import kotlin.system.measureTimeMillis
import kotlin.random.Random

suspend fun getNumber1(): Int {
    delay(1000)
    return Random.nextInt(1, 100)
}

suspend fun getNumber2(): Int {
    delay(1500)
    return Random.nextInt(1, 100)
}

fun main() {
    runBlocking {
        val sequentialTime = measureTimeMillis {
            val number1 = getNumber1()
            val number2 = getNumber2()
            val sum = number1 + number2
            println("Последовательный вызов: Сумма - $sum")
        }
        println("Последовательный вызов занял $sequentialTime миллисекунд")
    }
    
    runBlocking {
        val asyncTime = measureTimeMillis {
            val number1 = async { getNumber1() }
            val number2 = async { getNumber2() }
            val sum = number1.await() + number2.await()
            println("Асинхронный вызов: Сумма - $sum")
        }
        println("Асинхронный вызов занял $asyncTime миллисекунд")
    }
    
    runBlocking {
        launch {
            repeat(3) {
                delay(1000)
                println("I'm sleeping $it ...")
            }
            println("main: I'm tired of waiting!")
        }
        println("main: Now I can quit.")
    }
}