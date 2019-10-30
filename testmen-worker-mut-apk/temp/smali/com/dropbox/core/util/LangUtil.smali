.class public Lcom/dropbox/core/util/LangUtil;
.super Ljava/lang/Object;
.source "LangUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayConcat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'a\' can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'b\' can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_1
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "rn":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    array-length v3, p0

    array-length v4, p1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    move-object v0, v1

    .line 41
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method public static badType(Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string v0, "bad type: null"

    .line 31
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 29
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 3
    .param p0, "messagePrefix"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "ae":Ljava/lang/RuntimeException;
    invoke-virtual {v0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    return-object v0
.end method

.method public static nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 46
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static nullableHashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static truncateMillis(Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 60
    .local v0, "time":J
    new-instance p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/util/Date;
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 62
    .end local v0    # "time":J
    :cond_0
    return-object p0
.end method

.method public static truncateMillis(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    if-eqz p0, :cond_0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "truncated":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 70
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 71
    .local v2, "time":J
    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    rem-long v6, v2, v6

    sub-long v6, v2, v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "truncated":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .end local v2    # "time":J
    :cond_0
    move-object v1, p0

    .line 75
    :cond_1
    return-object v1
.end method
