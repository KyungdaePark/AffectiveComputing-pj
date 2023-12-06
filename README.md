<a name="br1"></a> 

**Efficient Facial Expression**

**Recognition with**

**Dynamic Attention**

12191759 박경대

22222034 정민우



<a name="br2"></a> 

**Contents**

**1. Introduction**

**2. Datasets**

**3. Related Work**

**4. Method**

**5. Results**

**6. Conclusion**

**2**



<a name="br3"></a> 

**Introduction**

**Background**

Analyzing and understanding human emotions in the field of emotional computing is a very important research topic recently.

This emotion classification can be performed through human facial expressions, and various deep learning models have been

developed for this purpose. Vision Transformer(ViT) is a model structure that is attracting attention in the field of image

processing, and this project explores its efficiency and accuracy by applying it to human emotion classification.

**Proposal**

We aim to further enhance the performance of ViT and improve computational efficiency by introducing a novel approach. This

new approach involves applying Dynamic Attention to the Transformer encoder part of ViT, thereby enhancing facial

expression recognition performance. Dynamic Attention introduces a new dynamic sparse attention mechanism for more

efficient attention operations in vision Transformers.



<a name="br4"></a> 

**Datasets**

**Class**

Anger

Anxiety

Happy

Hurt

**Total**

**Train**

9,000

9,000

9,000

9,000

9,000

9,000

9,000

**Validation**

1,000

10,000

10,000

10,000

10,000

10,000

10,000

10,000

1,000

1,000

1,000

Neutral

Panic

1,000

1,000

Sadness

1,000

Configuring Datasets

Origin Image

(2k ~ 4k)

Cropped Image

(256 x 256)

Sources : ‘A composite video for Korean emotional recognition’ from AI hub

**Description of datasets**

Korean photographs taken with smartphone cameras in various environments consist of a total of 7 classes.

(Anger, Anxiety, Happy, Hurt, Neutral, Panic, Sadness)

The face position is included in the dataset. We used this to crop the face and changed it to a 256 x 256 image.

https://www.aihub.or.kr/aihubdata/data/view.do?currMenu=&topMenu=&aihubDataSe=data&dataSetSn=82



<a name="br5"></a> 

**Introduction of Vision Transformer(ViT)**

**Model Description**

Transformer originally started with Natural Language Processing (NLP), but ViT applies it to vision tasks. The main concept is to learn how all parts of the data are related

to each other. Attention allows the model to pay ‘attention' to important parts of the input data. This emphasizes the information needed for a particular task, and ignores

less important information.

ViT splits the image into several small **'patches**’. This is similar to splitting words or sentences into tokens in NLP. Each patch divided in this way is converted into a fixed-

sized vector and ‘**embedded’**.

The Self-Attention mechanism calculates the relationship between these embedded patches. The model determines how important each patch is within the entire image

and how it interacts with other patches.



<a name="br6"></a> 

**Related Work**

**Compared to the previous paper**

• Transformer technology was originally proposed in the field of natural language processing (NLP), but it has also recently been applied to

image classification. The Transformer used by NLP is the best performance in Vision Task.

• ViT focuses on identifying global information by splitting the image patch into equal parts. In addition, Swin Transformer and Cswin

Transformer are used as local window and horizontal and vertical patches, respectively, by dividing the parts that they want to see importantly

through patches.

• In previous emotion classification research, various techniques were applied to see only the main areas of the image. The model proposed in

“Vision Transformer with Attentive Pooling for Robust Facial Expression Recognition” includes an attention-focused pooling module based on

a patch attention mechanism. These modules affect tokens within the Transformer model, focusing on the most relevant patch features and

eliminating the least relevant features.



<a name="br7"></a> 

**Method**

가장 관련된 key-value pair를 골라서 계산을 진행

• We propose dynamic attention from region to region, partitioning a given 2D input feature map into non-overlapping regions

to generate tokens for each region.

• Subsequently, we either maintain or prune each token based on its attention score through token-to-token attention (in this

case, retaining the most relevant two regions), creating a sparse graph.

• This approach induces sparse multiplication, significantly reducing computational and memory requirements on the GPU,

thereby proposing an efficient facial expression recognition method.



<a name="br8"></a> 

**Method**

Attention

Q\_win

Topk

@K\_win

routing

Topk index

Topk index

Key,Value Gather

(important tokens)

Query



<a name="br9"></a> 

**Results**

• **Performance**

**Method**

**ViT-16-224**

**Ours**

**Anger**

78\.3

**Anxiety**

60\.5

**Happy**

97\.4

**Hurt**

56\.2

51\.9

**Neutral**

90

**Panic**

74\.5

**Sadness**

71\.6

**Avg**

75\.425

73\.89

80\.9

55\.1

97\.7

91\.0

66\.3

74\.6

• **Comparing Computation Complexity(FLOPS)**

**Method**

**ViT-16-224**

**Ours**

**GFLOPS**

35\.1

9\.8

The accuracy has decreased by 1.54, while the computational load has reduced

by 72%.



<a name="br10"></a> 

**Conclusion**

**Conclusion**

• This approach induces sparse multiplication, significantly reducing computational and memory requirements on the GPU, thereby proposing

an efficient facial expression recognition method.

• In summary of the research findings, the accuracy has decreased by 1.54, while the computational load has reduced by 72%. These changes

serve as significant conclusions of our study, indicating the potential to balance accuracy and computational load by implementing more

efficient processing methods.



<a name="br11"></a> 

**Thank you for listening**

