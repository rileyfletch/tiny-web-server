#include <iostream>
#include <thread>
#include <random>
#include <chrono>

void work(std::string s, int time, int thread_id) {
    std::this_thread::sleep_for(std::chrono::milliseconds(time * 10));
    std::cout << "Thread ID: " << thread_id << " Time: " << time * 10 << std::endl;
}

int main() {
    std::cout << "Begin threaded simulation" << std::endl;
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(1, 1000);

    std::thread threads[25];

    for(int i = 0; i < 25; i++) {
        threads[i] = std::thread(work, "Hello world!", dis(gen), i);
    }

    for(int i = 0; i < 25; i++) {
        threads[i].join();
    }

    return 0;
}