.class public Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;
.super Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.source "ArticleDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment",
        "NewApi"
    }
.end annotation


# instance fields
.field private final article:Lcom/uservoice/uservoicesdk/model/Article;

.field private deflectingType:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/model/Article;Ljava/lang/String;)V
    .locals 0
    .param p1, "article"    # Lcom/uservoice/uservoicesdk/model/Article;
    .param p2, "deflectingType"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->article:Lcom/uservoice/uservoicesdk/model/Article;

    .line 27
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->deflectingType:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->deflectingType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)Lcom/uservoice/uservoicesdk/model/Article;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->article:Lcom/uservoice/uservoicesdk/model/Article;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_article_instant_answer_question:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->webView:Landroid/webkit/WebView;

    .line 36
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 40
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->article:Lcom/uservoice/uservoicesdk/model/Article;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/ui/Utils;->displayArticle(Landroid/webkit/WebView;Lcom/uservoice/uservoicesdk/model/Article;Landroid/content/Context;)V

    .line 42
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_no:I

    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_very_yes:I

    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment$2;-><init>(Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_ARTICLE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->article:Lcom/uservoice/uservoicesdk/model/Article;

    invoke-virtual {v3}, Lcom/uservoice/uservoicesdk/model/Article;->getId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;I)V

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/ArticleDialogFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;->onDismiss(Landroid/content/DialogInterface;)V

    .line 78
    return-void
.end method
