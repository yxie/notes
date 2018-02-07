# Adversarial Attack on NN

## Adversarial samples
Crafted by adding carefully selected **perturbations** $\delta X$ to **legitimate inputs** $X$

* **Goals**:
    * `Confidence reduction`: reduce the output confidence classification
    * `Misclassification`: alter the output classification to any other class
    * `Targeted misclassification`: alter the output classification to a target class
    * `Source/Target misclassification`: force the output classification of a specific input to be a specific target class
* **Constraints**:
    * The perturbation $\delta_X$ must be small enough to pass human test.
    * E.g., the number of features perturbed is no larger than 14.29% for MNIST (about 112 pixels) [@papernot2016limitations].
* **Attacks at TEST time**: attack does not change the DNN model




## Adversarial capabilities:

* **Network architecture**:
    * Layers, activation functions, weights, bias.
    * This gives attacker the ability to simulate the network.
* **Training data:**
    * The adversary is able to collect a *surrogate* dataset, sampled from the same distribution as the original training dataset.
    * This gives the attacker the ability to use the surrogate dataset to train a common DNN architecture to approximate the legitimate DNN model
* **Oracle**:
    * The adversary can obtain output classifications from supplied inputs.
    * This gives the attacker the ability to perform *differential attack* by observing the relationship between changes in inputs and outputs.
    * The adversary can be limited by the number of absolute or rate-limited input/output trails they may perform.



## Adversarial sample crafting algorithm

**Formal definition: **Given a legitimate sample $X$, classified as $F(X)=Y$ by the network, the adversary wants to craft an *adversarial sample* $X^*$ very similar to $X$, but misclassified as $F(X^*) = Y^* \ne Y$
$$
argmin_{\delta_X} ||\delta_X|| \  s.t. \  F(X+\delta_X) = Y^*
$$
**Two-step process**:

* **Direction Sensitivity Estimation**: evaluate the sensitivity of class change to each input feature
    * Fast sign gradient method[@goodfellow2014explaining]: compare the gradients of the cost function with respect to the inputs
    * Forward derivative method[@papernot2016limitations]
* **Perturbation Selection**: use the sensitivity information to select a perturbation $\delta_X$ among the input dimensions
    * Perturb all input dimensions by a small quantity [@goodfellow2014explaining]
    * Perturb a limited number of input dimensions by a large quantity [@papernot2016limitations]

![adversarial-crafting-framework](./img/adversarial-crafting-framework.PNG)



## Attempted defenses against adversarial examples
(Notes from [@goodfellow2017attacking])

* **Adversarial training** [@madry2017towards]:  
    * This is a brute force solution where we simply generate a lot of adversarial examples and explicitly train the model not to be fooled by each of them.
    * An open-source implementation of adversarial training is available in the [cleverhans](https://github.com/openai/cleverhans) library.

* **Defensive distillation** [@papernot2016distillation]:
    * This is a strategy where we train the model to output probabilities of different classes, rather than hard decisions about which class to output.
    * The probabilities are supplied by an earlier model, trained on the same task using hard class labels.
    * This creates a model whose surface is smoothed in the directions an adversary will typically try to exploit, making it difficult for them to discover adversarial input tweaks that lead to incorrect categorization
    * (Distillation was originally introduced in *Distilling the Knowledge in a Neural Network* as a technique for model compression, where a small model is trained to imitate a large one, in order to obtain computational savings.)

  ![defensive-distillation-overview](./img/defensive-distillation-overview.PNG)

(Notes from [@athalye2018obfuscated])

* **Shattered Gradients**: Thermometer Encoding [@buckman2018thermometer],Local Intrinsic Dimensionality (LID) [@ma2018characterizing], Input Transformation [@guo2018countering]

* **Stochastic Gradients**: Stochastic Activation Pruning [@s2018stochastic], Randomization [@xie2018mitigating]

* **Exploding and Vanishing Gradients**: PixelDefend [@song2018pixeldefend], Defense-GAN [@samangouei2018defensegan]


# References
