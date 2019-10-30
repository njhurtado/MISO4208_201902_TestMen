.class public Lnet/objecthunter/exp4j/ValidationResult;
.super Ljava/lang/Object;
.source "ValidationResult.java"


# static fields
.field public static final SUCCESS:Lnet/objecthunter/exp4j/ValidationResult;


# instance fields
.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lnet/objecthunter/exp4j/ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/objecthunter/exp4j/ValidationResult;-><init>(ZLjava/util/List;)V

    sput-object v0, Lnet/objecthunter/exp4j/ValidationResult;->SUCCESS:Lnet/objecthunter/exp4j/ValidationResult;

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .param p1, "valid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lnet/objecthunter/exp4j/ValidationResult;->valid:Z

    .line 34
    iput-object p2, p0, Lnet/objecthunter/exp4j/ValidationResult;->errors:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lnet/objecthunter/exp4j/ValidationResult;->errors:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lnet/objecthunter/exp4j/ValidationResult;->valid:Z

    return v0
.end method
