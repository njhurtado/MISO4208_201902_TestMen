.class public Lcom/owncloud/android/lib/resources/activities/models/Activity;
.super Ljava/lang/Object;
.source "Activity.java"


# instance fields
.field public activityId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activity_id"
    .end annotation
.end field

.field public affectedUser:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "affecteduser"
    .end annotation
.end field

.field public app:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public datetime:Ljava/util/Date;

.field public icon:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public objectId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object_id"
    .end annotation
.end field

.field public objectName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object_name"
    .end annotation
.end field

.field public objectType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "object_type"
    .end annotation
.end field

.field public richSubjectElement:Lcom/owncloud/android/lib/resources/activities/models/RichElement;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subject_rich"
    .end annotation
.end field

.field public subject:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->activityId:I

    return v0
.end method

.method public getAffectedUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->affectedUser:Ljava/lang/String;

    return-object v0
.end method

.method public getApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDatetime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->datetime:Ljava/util/Date;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->objectType:Ljava/lang/String;

    return-object v0
.end method

.method public getRichSubjectElement()Lcom/owncloud/android/lib/resources/activities/models/RichElement;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->richSubjectElement:Lcom/owncloud/android/lib/resources/activities/models/RichElement;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityId(I)V
    .locals 0
    .param p1, "activityId"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->activityId:I

    .line 77
    return-void
.end method

.method public setAffectedUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "affectedUser"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->affectedUser:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->app:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->date:Ljava/util/Date;

    .line 69
    return-void
.end method

.method public setDatetime(Ljava/util/Date;)V
    .locals 0
    .param p1, "datetime"    # Ljava/util/Date;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->datetime:Ljava/util/Date;

    .line 85
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->icon:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->link:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->message:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->objectId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->objectName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setObjectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectType"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->objectType:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setRichSubjectElement(Lcom/owncloud/android/lib/resources/activities/models/RichElement;)V
    .locals 0
    .param p1, "richSubjectElement"    # Lcom/owncloud/android/lib/resources/activities/models/RichElement;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->richSubjectElement:Lcom/owncloud/android/lib/resources/activities/models/RichElement;

    .line 182
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->subject:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->type:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/Activity;->user:Ljava/lang/String;

    .line 109
    return-void
.end method
