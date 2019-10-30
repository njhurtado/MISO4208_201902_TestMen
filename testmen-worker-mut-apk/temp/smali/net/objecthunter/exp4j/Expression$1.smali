.class Lnet/objecthunter/exp4j/Expression$1;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/objecthunter/exp4j/Expression;->evaluateAsync(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/objecthunter/exp4j/Expression;


# direct methods
.method constructor <init>(Lnet/objecthunter/exp4j/Expression;)V
    .locals 0
    .param p1, "this$0"    # Lnet/objecthunter/exp4j/Expression;

    .prologue
    .line 150
    iput-object p1, p0, Lnet/objecthunter/exp4j/Expression$1;->this$0:Lnet/objecthunter/exp4j/Expression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lnet/objecthunter/exp4j/Expression$1;->this$0:Lnet/objecthunter/exp4j/Expression;

    invoke-virtual {v0}, Lnet/objecthunter/exp4j/Expression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lnet/objecthunter/exp4j/Expression$1;->call()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
