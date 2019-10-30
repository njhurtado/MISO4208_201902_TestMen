.class public Lcom/owncloud/android/lib/resources/notifications/models/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field public actions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Action;",
            ">;"
        }
    .end annotation
.end field

.field public app:Ljava/lang/String;

.field public datetime:Ljava/util/Date;

.field public icon:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public messageRich:Ljava/lang/String;

.field public messageRichParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;"
        }
    .end annotation
.end field

.field public notificationId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification_id"
    .end annotation
.end field

.field public objectId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object_id"
    .end annotation
.end field

.field public objectType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object_type"
    .end annotation
.end field

.field public subject:Ljava/lang/String;

.field public subjectRich:Ljava/lang/String;

.field public subjectRichParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;"
        }
    .end annotation
.end field

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "app"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "datetime"    # Ljava/util/Date;
    .param p5, "objectType"    # Ljava/lang/String;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "subject"    # Ljava/lang/String;
    .param p8, "subjectRich"    # Ljava/lang/String;
    .param p10, "message"    # Ljava/lang/String;
    .param p11, "messageRich"    # Ljava/lang/String;
    .param p13, "link"    # Ljava/lang/String;
    .param p14, "icon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p9, "subjectRichParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/owncloud/android/lib/resources/notifications/models/RichObject;>;"
    .local p12, "messageRichParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/owncloud/android/lib/resources/notifications/models/RichObject;>;"
    .local p15, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/owncloud/android/lib/resources/notifications/models/Action;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->notificationId:I

    .line 138
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->app:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->user:Ljava/lang/String;

    .line 140
    iput-object p4, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->datetime:Ljava/util/Date;

    .line 141
    iput-object p5, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->objectType:Ljava/lang/String;

    .line 142
    iput-object p6, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->objectId:Ljava/lang/String;

    .line 143
    iput-object p7, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subject:Ljava/lang/String;

    .line 144
    iput-object p8, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subjectRich:Ljava/lang/String;

    .line 145
    iput-object p9, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subjectRichParameters:Ljava/util/Map;

    .line 146
    iput-object p10, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->message:Ljava/lang/String;

    .line 147
    iput-object p11, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->messageRich:Ljava/lang/String;

    .line 148
    iput-object p12, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->messageRichParameters:Ljava/util/Map;

    .line 149
    iput-object p13, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->link:Ljava/lang/String;

    .line 150
    iput-object p14, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->icon:Ljava/lang/String;

    .line 151
    iput-object p15, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->actions:Ljava/util/Collection;

    .line 152
    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->actions:Ljava/util/Collection;

    return-object v0
.end method

.method public getApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getDatetime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->datetime:Ljava/util/Date;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageRich()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->messageRich:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageRichParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->messageRichParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->notificationId:I

    return v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->objectType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectRich()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subjectRich:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectRichParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subjectRichParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setActions(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/owncloud/android/lib/resources/notifications/models/Action;>;"
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->actions:Ljava/util/Collection;

    .line 272
    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->app:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setDatetime(Ljava/util/Date;)V
    .locals 0
    .param p1, "datetime"    # Ljava/util/Date;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->datetime:Ljava/util/Date;

    .line 184
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->icon:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->link:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->message:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setMessageRich(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageRich"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->messageRich:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setMessageRichParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "messageRichParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/owncloud/android/lib/resources/notifications/models/RichObject;>;"
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->messageRichParameters:Ljava/util/Map;

    .line 248
    return-void
.end method

.method public setNotificationId(I)V
    .locals 0
    .param p1, "notificationId"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->notificationId:I

    .line 160
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->objectId:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setObjectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectType"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->objectType:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subject:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSubjectRich(Ljava/lang/String;)V
    .locals 0
    .param p1, "subjectRich"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subjectRich:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSubjectRichParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/resources/notifications/models/RichObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "subjectRichParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/owncloud/android/lib/resources/notifications/models/RichObject;>;"
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->subjectRichParameters:Ljava/util/Map;

    .line 224
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/Notification;->user:Ljava/lang/String;

    .line 176
    return-void
.end method
