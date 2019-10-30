.class public Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;
.super Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.source "PasswordDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private final callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

.field private password:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->authorize()V

    return-void
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;)Lcom/uservoice/uservoicesdk/flow/SigninCallback;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    return-object v0
.end method

.method private authorize()V
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$2;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$2;-><init>(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/AccessToken;->authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_password_dialog_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/uservoice/uservoicesdk/R$layout;->uv_password_dialog:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/uservoice/uservoicesdk/R$id;->uv_password:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->password:Landroid/widget/EditText;

    .line 39
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 40
    sget v3, Lcom/uservoice/uservoicesdk/R$string;->uv_cancel:I

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    const v3, 0x104000a

    new-instance v4, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 58
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 59
    return-object v1
.end method
