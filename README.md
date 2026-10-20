# Simple Dice roller app

This is the first app taught by Maximilian Schwarzmuller from Flutter & Dart - The Complete Guide from section 1 episode 8

# What I learn?

In this simple project I learned that instantiating an object repeatedly in frequently executed code consumes hardware resources. For example writing "currentDiceRoll = Random().nextInt(6) + 1;" creates a new Random instance everytime the line is executed. To fix this I can instantiate Random() once in a variable and use the variable instead. I believe that in the future when working in a bigger project this basic knowledge can help with the performance management.
