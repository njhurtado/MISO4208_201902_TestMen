.class public Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;
.super Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.source "SubscribeDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private final deflectingType:Ljava/lang/String;

.field private final suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

.field private final suggestionDialog:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "suggestion"    # Lcom/uservoice/uservoicesdk/model/Suggestion;
    .param p2, "suggestionDialog"    # Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
    .param p3, "deflectingType"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    .line 33
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->suggestionDialog:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    .line 34
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->deflectingType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->deflectingType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;)Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->suggestionDialog:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/uservoice/uservoicesdk/R$string;->uv_subscribe_dialog_title:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/uservoice/uservoicesdk/R$layout;->uv_subscribe_dialog:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/uservoice/uservoicesdk/R$id;->uv_email:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 46
    .local v2, "emailField":Landroid/widget/EditText;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v4

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 48
    sget v4, Lcom/uservoice/uservoicesdk/R$string;->uv_nevermind:I

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    sget v4, Lcom/uservoice/uservoicesdk/R$string;->uv_subscribe:I

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 52
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 53
    new-instance v4, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SubscribeDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 86
    return-object v1
.end method
