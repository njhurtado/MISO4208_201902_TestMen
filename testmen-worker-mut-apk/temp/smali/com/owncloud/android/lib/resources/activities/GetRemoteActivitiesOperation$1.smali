.class Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "GetRemoteActivitiesOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->parseResult(Ljava/lang/String;)Ljava/util/ArrayList;
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
        "Lcom/owncloud/android/lib/resources/activities/models/Activity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;


# direct methods
.method constructor <init>(Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation$1;->this$0:Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
