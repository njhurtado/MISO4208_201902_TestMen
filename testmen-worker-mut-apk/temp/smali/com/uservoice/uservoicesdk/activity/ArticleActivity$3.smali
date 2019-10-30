.class Lcom/uservoice/uservoicesdk/activity/ArticleActivity$3;
.super Ljava/lang/Object;
.source "ArticleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/ArticleActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ArticleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/ArticleActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/ArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;-><init>()V

    .line 58
    .local v0, "dialog":Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$3;->this$0:Lcom/uservoice/uservoicesdk/activity/ArticleActivity;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/activity/ArticleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "UnhelpfulDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    return-void
.end method
