.class public Lcom/owncloud/android/lib/resources/notifications/models/RichObject;
.super Ljava/lang/Object;
.source "RichObject.java"


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->type:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->id:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->name:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/RichObject;->type:Ljava/lang/String;

    .line 66
    return-void
.end method
