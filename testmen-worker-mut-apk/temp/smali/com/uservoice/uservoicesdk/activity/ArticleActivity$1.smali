.class Lcom/uservoice/uservoicesdk/activity/ArticleActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ArticleActivity.java"


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

.field final synthetic val$helpfulSection:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ArticleActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/ArticleActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ArticleActivity;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$1;->val$helpfulSection:Landroid/view/View;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ArticleActivity$1;->val$helpfulSection:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void
.end method
