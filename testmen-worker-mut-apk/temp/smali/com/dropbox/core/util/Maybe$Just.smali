.class final Lcom/dropbox/core/util/Maybe$Just;
.super Lcom/dropbox/core/util/Maybe;
.source "Maybe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/util/Maybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Just"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/util/Maybe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/core/util/Maybe;-><init>(Lcom/dropbox/core/util/Maybe$1;)V

    .line 25
    iput-object p1, p0, Lcom/dropbox/core/util/Maybe$Just;->value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/dropbox/core/util/Maybe$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/dropbox/core/util/Maybe$1;

    .prologue
    .line 20
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    invoke-direct {p0, p1}, Lcom/dropbox/core/util/Maybe$Just;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Lcom/dropbox/core/util/Maybe;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/util/Maybe",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    .local p1, "other":Lcom/dropbox/core/util/Maybe;, "Lcom/dropbox/core/util/Maybe<TT;>;"
    instance-of v1, p1, Lcom/dropbox/core/util/Maybe$Just;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/dropbox/core/util/Maybe$Just;

    .line 40
    .local v0, "j":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    iget-object v1, p0, Lcom/dropbox/core/util/Maybe$Just;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/dropbox/core/util/Maybe$Just;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 43
    .end local v0    # "j":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    :goto_0
    return v1

    .line 42
    :cond_0
    instance-of v1, p1, Lcom/dropbox/core/util/Maybe$Nothing;

    if-eqz v1, :cond_1

    .line 43
    const/4 v1, 0x0

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->badType(Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    .local p1, "def":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/dropbox/core/util/Maybe$Just;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getJust()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    iget-object v0, p0, Lcom/dropbox/core/util/Maybe$Just;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    iget-object v0, p0, Lcom/dropbox/core/util/Maybe$Just;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isJust()Z
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isNothing()Z
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcom/dropbox/core/util/Maybe$Just;, "Lcom/dropbox/core/util/Maybe$Just<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Just("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/util/Maybe$Just;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
