.class Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;
.super Ljava/util/TimerTask;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uservoice/uservoicesdk/ui/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTask"
.end annotation


# instance fields
.field private final query:Ljava/lang/String;

.field private stop:Z

.field private task:Lcom/uservoice/uservoicesdk/rest/RestTask;

.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/ui/SearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 52
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>.SearchTask;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->query:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->stop:Z

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>.SearchTask;"
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->stop:Z

    .line 59
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->task:Lcom/uservoice/uservoicesdk/rest/RestTask;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->task:Lcom/uservoice/uservoicesdk/rest/RestTask;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/RestTask;->cancel(Z)Z

    .line 62
    :cond_0
    return v1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 67
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;, "Lcom/uservoice/uservoicesdk/ui/SearchAdapter<TT;>.SearchTask;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->query:Ljava/lang/String;

    iput-object v1, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->currentQuery:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->query:Ljava/lang/String;

    new-instance v2, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    iget-object v3, v3, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask$1;-><init>(Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->search(Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->task:Lcom/uservoice/uservoicesdk/rest/RestTask;

    .line 79
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->task:Lcom/uservoice/uservoicesdk/rest/RestTask;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter$SearchTask;->this$0:Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->loading:Z

    .line 83
    :cond_0
    return-void
.end method
