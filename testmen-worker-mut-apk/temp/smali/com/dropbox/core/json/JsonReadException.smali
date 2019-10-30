.class public final Lcom/dropbox/core/json/JsonReadException;
.super Ljava/lang/Exception;
.source "JsonReadException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/json/JsonReadException$PathPart;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final error:Ljava/lang/String;

.field public final location:Lcom/fasterxml/jackson/core/JsonLocation;

.field private path:Lcom/dropbox/core/json/JsonReadException$PathPart;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "location"    # Lcom/fasterxml/jackson/core/JsonLocation;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dropbox/core/json/JsonReadException;->error:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/dropbox/core/json/JsonReadException;->location:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "location"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 28
    iput-object p1, p0, Lcom/dropbox/core/json/JsonReadException;->error:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/dropbox/core/json/JsonReadException;->location:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    .line 31
    return-void
.end method

.method public static fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;
    .locals 4
    .param p0, "ex"    # Lcom/fasterxml/jackson/core/JsonProcessingException;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "message":Ljava/lang/String;
    const-string v2, " at [Source"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "locPos":I
    if-ltz v0, :cond_0

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_0
    new-instance v2, Lcom/dropbox/core/json/JsonReadException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v2
.end method

.method public static toStringLocation(Ljava/lang/StringBuilder;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "location"    # Lcom/fasterxml/jackson/core/JsonLocation;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonLocation;->getSourceRef()Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "sourceRef":Ljava/lang/Object;
    instance-of v2, v1, Ljava/io/File;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 75
    check-cast v0, Ljava/io/File;

    .line 76
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonLocation;->getLineNr()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonLocation;->getColumnNr()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    return-void
.end method


# virtual methods
.method public addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/core/json/JsonReadException$PathPart;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException$PathPart;-><init>(Ljava/lang/String;Lcom/dropbox/core/json/JsonReadException$PathPart;)V

    iput-object v0, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    .line 42
    return-object p0
.end method

.method public addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 35
    new-instance v0, Lcom/dropbox/core/json/JsonReadException$PathPart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException$PathPart;-><init>(Ljava/lang/String;Lcom/dropbox/core/json/JsonReadException$PathPart;)V

    iput-object v0, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    .line 36
    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/dropbox/core/json/JsonReadException;->location:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-static {v0, v2}, Lcom/dropbox/core/json/JsonReadException;->toStringLocation(Ljava/lang/StringBuilder;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 51
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v2, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    if-eqz v2, :cond_1

    .line 55
    iget-object v1, p0, Lcom/dropbox/core/json/JsonReadException;->path:Lcom/dropbox/core/json/JsonReadException$PathPart;

    .line 56
    .local v1, "p":Lcom/dropbox/core/json/JsonReadException$PathPart;
    iget-object v2, v1, Lcom/dropbox/core/json/JsonReadException$PathPart;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_0
    iget-object v2, v1, Lcom/dropbox/core/json/JsonReadException$PathPart;->next:Lcom/dropbox/core/json/JsonReadException$PathPart;

    if-eqz v2, :cond_0

    .line 58
    iget-object v1, v1, Lcom/dropbox/core/json/JsonReadException$PathPart;->next:Lcom/dropbox/core/json/JsonReadException$PathPart;

    .line 59
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v2, v1, Lcom/dropbox/core/json/JsonReadException$PathPart;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_0
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .end local v1    # "p":Lcom/dropbox/core/json/JsonReadException$PathPart;
    :cond_1
    iget-object v2, p0, Lcom/dropbox/core/json/JsonReadException;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
