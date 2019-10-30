.class Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$1;
.super Ljava/lang/Object;
.source "InstantAnswersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->onInitialize()V

    .line 37
    return-void
.end method
