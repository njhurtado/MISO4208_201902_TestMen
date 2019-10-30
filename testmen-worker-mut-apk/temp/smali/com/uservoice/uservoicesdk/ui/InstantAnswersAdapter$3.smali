.class Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "InstantAnswersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->onButtonTapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/uservoice/uservoicesdk/model/BaseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 283
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->onModel(Ljava/util/List;)V

    return-void
.end method

.method public onModel(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/BaseModel;>;"
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    iget-object v2, v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->deflectingType:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/uservoice/uservoicesdk/deflection/Deflection;->trackSearchDeflection(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    iput-object p1, v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    .line 289
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->instantAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->DETAILS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    iput-object v2, v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->notifyDataSetChanged()V

    .line 294
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    sget-object v2, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;->INSTANT_ANSWERS:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    iput-object v2, v1, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->state:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter$State;

    goto :goto_0
.end method
