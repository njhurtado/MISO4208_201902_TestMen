.class Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;
.super Ljava/lang/Object;
.source "RemoteOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/owncloud/android/lib/common/operations/RemoteOperation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owncloud/android/lib/common/operations/RemoteOperation;

.field final synthetic val$resultToSend:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;


# direct methods
.method constructor <init>(Lcom/owncloud/android/lib/common/operations/RemoteOperation;Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/owncloud/android/lib/common/operations/RemoteOperation;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;->this$0:Lcom/owncloud/android/lib/common/operations/RemoteOperation;

    iput-object p2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;->val$resultToSend:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;->this$0:Lcom/owncloud/android/lib/common/operations/RemoteOperation;

    invoke-static {v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->access$000(Lcom/owncloud/android/lib/common/operations/RemoteOperation;)Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;->this$0:Lcom/owncloud/android/lib/common/operations/RemoteOperation;

    iget-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;->val$resultToSend:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-interface {v0, v1, v2}, Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;->onRemoteOperationFinish(Lcom/owncloud/android/lib/common/operations/RemoteOperation;Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;)V

    .line 347
    return-void
.end method
