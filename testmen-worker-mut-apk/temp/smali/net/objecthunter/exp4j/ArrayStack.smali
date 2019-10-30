.class Lnet/objecthunter/exp4j/ArrayStack;
.super Ljava/lang/Object;
.source "ArrayStack.java"


# instance fields
.field private data:[D

.field private idx:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lnet/objecthunter/exp4j/ArrayStack;-><init>(I)V

    .line 34
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-gtz p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stack\'s capacity must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    new-array v0, p1, [D

    iput-object v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    .line 44
    return-void
.end method


# virtual methods
.method isEmpty()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method peek()D
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    iget v1, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method pop()D
    .locals 3

    .prologue
    .line 64
    iget v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    iget v1, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method push(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    const/4 v6, 0x0

    .line 47
    iget v1, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 48
    iget-object v1, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    array-length v1, v1

    int-to-double v2, v1

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [D

    .line 49
    .local v0, "temp":[D
    iget-object v1, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    iget-object v2, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput-object v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    .line 53
    .end local v0    # "temp":[D
    :cond_0
    iget-object v1, p0, Lnet/objecthunter/exp4j/ArrayStack;->data:[D

    iget v2, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    aput-wide p1, v1, v2

    .line 54
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lnet/objecthunter/exp4j/ArrayStack;->idx:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
