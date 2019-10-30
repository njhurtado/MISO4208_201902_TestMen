.class Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$2;
.super Ljava/lang/Object;
.source "InstantAnswersAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 193
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    sget-object v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    sget-object v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INIT:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    iput-object v1, v0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    .line 183
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->notifyDataSetChanged()V

    .line 185
    :cond_0
    return-void
.end method
