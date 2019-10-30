.class Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$1;
.super Ljava/lang/Object;
.source "InstantAnswersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 160
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->onButtonTapped()V

    .line 164
    return-void
.end method
