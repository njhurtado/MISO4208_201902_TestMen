.class public Lcom/owncloud/android/lib/resources/activities/models/RichElement;
.super Ljava/lang/Object;
.source "RichElement.java"


# instance fields
.field richObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/owncloud/android/lib/resources/activities/models/RichObject;",
            ">;"
        }
    .end annotation
.end field

.field public richSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/RichElement;->richObjectList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getRichObjectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/owncloud/android/lib/resources/activities/models/RichObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/RichElement;->richObjectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRichSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/activities/models/RichElement;->richSubject:Ljava/lang/String;

    return-object v0
.end method

.method public setRichObjectList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/owncloud/android/lib/resources/activities/models/RichObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "richObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/owncloud/android/lib/resources/activities/models/RichObject;>;"
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/RichElement;->richObjectList:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public setRichSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "richSubject"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/activities/models/RichElement;->richSubject:Ljava/lang/String;

    .line 46
    return-void
.end method
