.class abstract Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;
.super Ljava/lang/Object;
.source "IfHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/header/IfHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IfListEntry"
.end annotation


# instance fields
.field protected final positive:Z

.field protected stringValue:Ljava/lang/String;

.field protected final value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "positive"    # Z

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->value:Ljava/lang/String;

    .line 555
    iput-boolean p2, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->positive:Z

    .line 556
    return-void
.end method


# virtual methods
.method protected abstract getType()Ljava/lang/String;
.end method

.method protected getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 577
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->positive:Z

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract match(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->stringValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->positive:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->stringValue:Ljava/lang/String;

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/IfHeader$IfListEntry;->stringValue:Ljava/lang/String;

    return-object v0

    .line 623
    :cond_1
    const-string v0, "!"

    goto :goto_0
.end method
