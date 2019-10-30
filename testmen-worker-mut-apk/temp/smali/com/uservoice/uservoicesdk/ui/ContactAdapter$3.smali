.class Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->doSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Ticket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/ContactAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 2
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->isPosting:Z

    .line 153
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    .line 154
    return-void
.end method

.method public onModel(Lcom/uservoice/uservoicesdk/model/Ticket;)V
    .locals 3
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Ticket;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SUBMIT_TICKET:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;)V

    .line 146
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_ticket_created:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->context:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 148
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Lcom/uservoice/uservoicesdk/model/Ticket;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$3;->onModel(Lcom/uservoice/uservoicesdk/model/Ticket;)V

    return-void
.end method
