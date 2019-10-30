.class Lcom/codetroopers/betterpickers/HapticFeedbackController$1;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/HapticFeedbackController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/HapticFeedbackController;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/HapticFeedbackController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/HapticFeedbackController;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/codetroopers/betterpickers/HapticFeedbackController$1;->this$0:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/codetroopers/betterpickers/HapticFeedbackController$1;->this$0:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/HapticFeedbackController$1;->this$0:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->access$100(Lcom/codetroopers/betterpickers/HapticFeedbackController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->access$200(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->access$002(Lcom/codetroopers/betterpickers/HapticFeedbackController;Z)Z

    .line 35
    return-void
.end method
