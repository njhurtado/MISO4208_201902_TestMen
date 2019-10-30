.class Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;
.super Ljava/lang/Object;
.source "PortalAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/PortalAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->access$002(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Z)Z

    .line 57
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->notifyDataSetChanged()V

    .line 58
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->access$100(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->access$200(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;)V

    .line 60
    return-void
.end method
