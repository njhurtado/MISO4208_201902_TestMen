.class Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$2;
.super Ljava/lang/Object;
.source "InstantAnswersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->onBackPressed()V
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
    .line 52
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$2;->this$0:Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->finish()V

    .line 56
    return-void
.end method
