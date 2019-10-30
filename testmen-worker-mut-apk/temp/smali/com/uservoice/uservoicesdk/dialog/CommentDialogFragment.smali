.class public Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;
.super Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.source "CommentDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private final suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

.field private final suggestionDialog:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)V
    .locals 0
    .param p1, "suggestion"    # Lcom/uservoice/uservoicesdk/model/Suggestion;
    .param p2, "suggestionDialog"    # Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    .line 32
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->suggestionDialog:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->suggestion:Lcom/uservoice/uservoicesdk/model/Suggestion;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;)Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->suggestionDialog:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 37
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/ui/Utils;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 41
    :cond_0
    sget v0, Lcom/uservoice/uservoicesdk/R$string;->uv_post_a_comment:I

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 43
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/uservoice/uservoicesdk/R$layout;->uv_comment_dialog:I

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 44
    .local v10, "view":Landroid/view/View;
    sget v0, Lcom/uservoice/uservoicesdk/R$id;->uv_comment_edit_text:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 46
    .local v2, "textField":Landroid/widget/EditText;
    sget v0, Lcom/uservoice/uservoicesdk/R$id;->uv_email:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 47
    .local v8, "email":Landroid/view/View;
    sget v0, Lcom/uservoice/uservoicesdk/R$id;->uv_name:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 48
    .local v9, "name":Landroid/view/View;
    sget v0, Lcom/uservoice/uservoicesdk/R$id;->uv_text_field:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 49
    .local v3, "emailField":Landroid/widget/EditText;
    sget v0, Lcom/uservoice/uservoicesdk/R$id;->uv_text_field:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 50
    .local v4, "nameField":Landroid/widget/EditText;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Session;->getUser()Lcom/uservoice/uservoicesdk/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_0
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 62
    sget v0, Lcom/uservoice/uservoicesdk/R$string;->uv_cancel:I

    invoke-virtual {v6, v0, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 65
    .local v5, "context":Landroid/app/Activity;
    sget v11, Lcom/uservoice/uservoicesdk/R$string;->uv_post_comment:I

    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 86
    .local v7, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 87
    return-object v7

    .line 54
    .end local v5    # "context":Landroid/app/Activity;
    .end local v7    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v0, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_your_email_address:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/CommentDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Session;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget v0, Lcom/uservoice/uservoicesdk/R$id;->uv_header_text:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_your_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
