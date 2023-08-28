[![LinkedIn][linkedin-shield]][linkedin-url]

# Multiplier-using-Russian-Peasent-algorithm
Data path and Controller design in SystemVerilog for a multiplier using Russian Peasant algorithm

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#overview-of-peasent-multiplication">Overview of Peasent Multiplication</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About the project
There are many datapath and controller designs for the multiplier available on the internet but today I will be exploring a new algorithm for the purpose of multiplication of two 16 bit numbers. I have implemented **Russian peasent algorithm** for this research project.<br>
Russian peasant multiplication is an interesting way to multiply numbers that uses a process of halving and doubling without using multiplication operator. The idea is to double the first number and halve the second number repeatedly till the second number doesn't become 1. So, let's dive into the project:

## Getting Started
First of all, let's start with the basics. We will first understand the working of the Russian Peasent algorithm and then move on to the Systemverilog datapath and controller design.
### Overview of Peasent Multiplication
Russian peasant multiplication is an interesting way to multiply numbers that uses a process of halving and doubling. Like standard multiplication and division, Russian peasant multiplication is an algorithm; however, it allows you to multiply any two whole numbers using only multiplication and division by 2.
More on this algorithm is available at:<br>
  - [How to Multiply Using the Russian Peasant Method](https://www.wikihow.com/Multiply-Using-the-Russian-Peasant-Method)





<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/muhammad-hammad-bashir/
