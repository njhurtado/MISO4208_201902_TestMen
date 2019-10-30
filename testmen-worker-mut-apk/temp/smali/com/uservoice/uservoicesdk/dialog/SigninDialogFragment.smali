.class public Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;
.super Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.source "SigninDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

.field private email:Ljava/lang/String;

.field private emailField:Landroid/widget/EditText;

.field private forgotPassword:Landroid/widget/Button;

.field private name:Ljava/lang/String;

.field private nameField:Landroid/widget/EditText;

.field private passwordField:Landroid/widget/EditText;

.field private passwordFields:Landroid/view/View;

.field private requestTokenCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->email:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->name:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->requestTokenCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->sendForgotPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->emailField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->discoverUser()V

    return-void
.end method

.method static synthetic access$400(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->signIn()V

    return-void
.end method

.method static synthetic access$500(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->passwordFields:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->nameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->passwordField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Lcom/uservoice/uservoicesdk/flow/SigninCallback;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    return-object v0
.end method

.method private discoverUser()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->emailField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V

    invoke-static {v0, v1, v2}, Lcom/uservoice/uservoicesdk/model/User;->discover(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 139
    return-void
.end method

.method private sendForgotPassword()V
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 190
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->emailField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$7;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$7;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/User;->sendForgotPassword(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 196
    return-void
.end method

.method private signIn()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 143
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;Landroid/app/Activity;)V

    .line 181
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/Session;->getRequestToken()Lcom/uservoice/uservoicesdk/model/RequestToken;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->requestTokenCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$1;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getRequestToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 68
    :cond_0
    sget v4, Lcom/uservoice/uservoicesdk/R$string;->uv_signin_dialog_title:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 70
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/uservoice/uservoicesdk/R$layout;->uv_signin_layout:I

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/uservoice/uservoicesdk/R$id;->uv_signin_email:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->emailField:Landroid/widget/EditText;

    .line 72
    sget v4, Lcom/uservoice/uservoicesdk/R$id;->uv_signin_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->nameField:Landroid/widget/EditText;

    .line 73
    sget v4, Lcom/uservoice/uservoicesdk/R$id;->uv_signin_password:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->passwordField:Landroid/widget/EditText;

    .line 74
    sget v4, Lcom/uservoice/uservoicesdk/R$id;->uv_signin_password_fields:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->passwordFields:Landroid/view/View;

    .line 75
    sget v4, Lcom/uservoice/uservoicesdk/R$id;->uv_signin_forgot_password:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->forgotPassword:Landroid/widget/Button;

    .line 77
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->passwordFields:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->emailField:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->nameField:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->email:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->discoverUser()V

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->forgotPassword:Landroid/widget/Button;

    new-instance v5, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$2;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->emailField:Landroid/widget/EditText;

    new-instance v5, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$3;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 100
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    sget v4, Lcom/uservoice/uservoicesdk/R$string;->uv_signin_dialog_ok:I

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 105
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 119
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 120
    return-object v1
.end method
