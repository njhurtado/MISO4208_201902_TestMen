.class Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "RegisterAccountDeviceForNotificationsOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->parseResult(Ljava/lang/String;)Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;


# direct methods
.method constructor <init>(Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation$1;->this$0:Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
