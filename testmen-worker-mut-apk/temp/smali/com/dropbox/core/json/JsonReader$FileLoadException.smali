.class public abstract Lcom/dropbox/core/json/JsonReader$FileLoadException;
.super Ljava/lang/Exception;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/json/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FileLoadException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/json/JsonReader$FileLoadException$JsonError;,
        Lcom/dropbox/core/json/JsonReader$FileLoadException$IOError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 537
    return-void
.end method
