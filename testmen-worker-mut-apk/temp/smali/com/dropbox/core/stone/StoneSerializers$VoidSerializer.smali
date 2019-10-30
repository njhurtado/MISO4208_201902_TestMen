.class final Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VoidSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Void;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 206
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$VoidSerializer;->serialize(Ljava/lang/Void;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize(Ljava/lang/Void;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Void;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    .line 212
    return-void
.end method
