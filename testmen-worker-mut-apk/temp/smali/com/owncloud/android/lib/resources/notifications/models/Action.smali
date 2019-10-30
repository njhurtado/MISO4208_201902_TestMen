.class public Lcom/owncloud/android/lib/resources/notifications/models/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field public label:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public primary:Z

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "primary"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Action;->label:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/notifications/models/Action;->link:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/notifications/models/Action;->type:Ljava/lang/String;

    .line 61
    iput-boolean p4, p0, Lcom/owncloud/android/lib/resources/notifications/models/Action;->primary:Z

    .line 62
    return-void
.end method
