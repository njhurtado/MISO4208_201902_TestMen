.class Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "GetRemoteNotificationsOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->parseResult(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/owncloud/android/lib/resources/notifications/models/Notification;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;


# direct methods
.method constructor <init>(Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation$1;->this$0:Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
