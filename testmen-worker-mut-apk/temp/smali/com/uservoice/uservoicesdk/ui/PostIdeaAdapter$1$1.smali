.class Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PostIdeaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1$1;->this$1:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 2
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1$1;->this$1:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->isPosting:Z

    .line 132
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    .line 133
    return-void
.end method

.method public onModel(Lcom/uservoice/uservoicesdk/model/Suggestion;)V
    .locals 3
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Suggestion;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1$1;->this$1:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBMIT_IDEA:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;)V

    .line 125
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1$1;->this$1:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_idea_created:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1$1;->this$1:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 127
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 121
    check-cast p1, Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PostIdeaAdapter$1$1;->onModel(Lcom/uservoice/uservoicesdk/model/Suggestion;)V

    return-void
.end method
