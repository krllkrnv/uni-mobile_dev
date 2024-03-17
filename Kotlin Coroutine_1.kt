import kotlinx.coroutines.*

fun main() {
    runBlocking {
        val job = launch {
            delay(1000)
            println("World")
        }
        
        delay(2000)
        println("Hello,")

        job.join() 
    }
}