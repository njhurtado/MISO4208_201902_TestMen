.class Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;
.super Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
.source "SuggestionDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getListAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I

    .prologue
    .line 122
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Comment;>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected customizeLayout(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Comment;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "model"    # Lcom/uservoice/uservoicesdk/model/Comment;

    .prologue
    .line 130
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Comment;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 134
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Comment;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_date:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 137
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    sget v2, Lcom/uservoice/uservoicesdk/R$id;->uv_avatar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    .local v0, "avatar":Landroid/widget/ImageView;
    invoke-static {}, Lcom/uservoice/uservoicesdk/image/ImageCache;->getInstance()Lcom/uservoice/uservoicesdk/image/ImageCache;

    move-result-object v2

    invoke-virtual {p2}, Lcom/uservoice/uservoicesdk/model/Comment;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/uservoice/uservoicesdk/image/ImageCache;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 141
    return-void
.end method

.method protected bridge synthetic customizeLayout(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p2, Lcom/uservoice/uservoicesdk/model/Comment;

    invoke-virtual {p0, p1, p2}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;->customizeLayout(Landroid/view/View;Lcom/uservoice/uservoicesdk/model/Comment;)V

    return-void
.end method

.method protected getTotalNumberOfObjects()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/Suggestion;->getNumberOfComments()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected loadPage(ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Comment;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Comment;>;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment$3;->this$0:Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SuggestionDialogFragment;)Lcom/uservoice/uservoicesdk/model/Suggestion;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/uservoice/uservoicesdk/model/Comment;->loadComments(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/Suggestion;ILcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 151
    return-void
.end method
