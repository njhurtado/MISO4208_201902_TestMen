.class public Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;
.super Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.source "UnhelpfulDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 23
    :cond_0
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_unhelpful_article_message_question:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 25
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_no:I

    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_yes:I

    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$2;-><init>(Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
