[![LinkedIn][linkedin-shield]][linkedin-url]

# Multiplier-using-Russian-Peasent-algorithm
Data path and Controller design in SystemVerilog for a multiplier using Russian Peasant algorithm

## About the project
There are many datapath and controller designs for the multiplier available on the internet but today I will be exploring a new algorithm for the purpose of multiplication of two 16 bit numbers. I have implemented **Russian peasent algorithm** for this research project.<br>
Russian peasant multiplication is an interesting way to multiply numbers that uses a process of halving and doubling without using multiplication operator. The idea is to double the first number and halve the second number repeatedly till the second number doesn't become 1. So, let's dive into the project:

## Run the project
For compilation and for viewing the waveforms, I have used **ModelSim**. You may use other tools like Verilator and gtkwave or if you want to run it online I would suggest you to use **[`Eda Playground`](https://edaplayground.com)**. But, let's stay to the point, please download ModelSim from **[`here`](https://gist.github.com/Razer6/cafc172b5cffae189b4ecda06cf6c64f)** <br>
1. After installing and opening the ModelSim, please clone this repository using the following command:
  ```
  git clone https://github.com/MuhammadHammad001/Multiplier-using-Russian-Peasent-algorithm.git 
  ```
2. Change the directory:
  ```
   cd Multiplier-using-Russian-Peasent-algorithm
  ```
3. Create a new project and add all the source files and the testbenches that you need(for now, I am only adding the testbench for the topmodule). Then compile all the files and simulate to observe the results.

## Getting Started
First of all, let's start with the basics. We will first understand the working of the Russian Peasent algorithm and then move on to the Systemverilog datapath and controller design.
### Overview of Peasent Multiplication
Russian peasant multiplication is an interesting way to multiply numbers that uses a process of halving and doubling. Like standard multiplication and division, Russian peasant multiplication is an algorithm; however, it allows you to multiply any two whole numbers using only multiplication and division by 2.
More on this algorithm is available at:<br>
  - [How to Multiply Using the Russian Peasant Method](https://www.wikihow.com/Multiply-Using-the-Russian-Peasant-Method)

### Datapath Design for the Multiplier
|  **`Signal`**  | **`Direction`** | **`Path`** |
|:--------------:|:---------------:|:----------:|
|   **[15:0]X**  |      input      |    User    |
|   **[15:0]X**  |      input      |    User    |
|     **clk**    |      input      |    User    |
|     **rst**    |      input      |    User    |
|    **x_ld**    |      input      | Controller |
|    **y_ld**    |      input      | Controller |
|    **x_sel**   |      input      | Controller |
|    **y_sel**   |      input      | Controller |
|   **add_en**   |      input      | Controller |
|   **out_en**   |      input      | Controller |
| **x_odd_flag** |      output     | Controller |
|   **x_flag**   |      output     | Controller |
|    **Mult**    |      output     |    User    |

<img src="others/imgs/datapath design.drawio.png" width="950"> 

### State Transition Graph for the Controller:
Please refer to the `others/imgs` if image is blur.

<img src="others/imgs/controller.drawio.png"  width="950"> 


## Results
Using the testbench `tbMultiplier`, I multiplied multiple numbers. By observing the waveform, we see that it takes maximum of 16 cycles to multiply two numbers of size of 16 bits each. Please refer to the following waveform, in which I multiply 45 with 40 which takes 16 cycles to produce the final result.

<img src="others/imgs/result40x45.png"  width="950"> 

<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/muhammad-hammad-bashir/
