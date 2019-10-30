.class public final Lcom/dropbox/core/v1/DbxDelta$Reader;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxDelta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Lcom/dropbox/core/util/Dumpable;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxDelta",
        "<TMD;>;>;"
    }
.end annotation


# static fields
.field private static final FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

.field private static final FM_cursor:I = 0x2

.field private static final FM_entries:I = 0x1

.field private static final FM_has_more:I = 0x3

.field private static final FM_reset:I


# instance fields
.field public final metadataReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    .line 161
    .local v0, "b":Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;
    const-string v1, "reset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 162
    const-string v1, "entries"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 163
    const-string v1, "cursor"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 164
    const-string v1, "has_more"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v1

    sput-object v1, Lcom/dropbox/core/v1/DbxDelta$Reader;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/json/JsonReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/dropbox/core/v1/DbxDelta$Reader;, "Lcom/dropbox/core/v1/DbxDelta$Reader<TMD;>;"
    .local p1, "metadataReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TMD;>;"
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDelta$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    .line 98
    return-void
.end method

.method public static read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDelta;
    .locals 12
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MD:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)",
            "Lcom/dropbox/core/v1/DbxDelta",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "metadataReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TMD;>;"
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v8

    .line 110
    .local v8, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v7, 0x0

    .line 111
    .local v7, "reset":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 112
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v1/DbxDelta$Entry<TMD;>;>;"
    const/4 v0, 0x0

    .line 113
    .local v0, "cursor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 115
    .local v6, "has_more":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "fieldName":Ljava/lang/String;
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 119
    sget-object v9, Lcom/dropbox/core/v1/DbxDelta$Reader;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    invoke-virtual {v9, v5}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v4

    .line 121
    .local v4, "fi":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_0

    .line 123
    :try_start_0
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v0    # "cursor":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v1/DbxDelta$Entry<TMD;>;>;"
    .end local v6    # "has_more":Ljava/lang/Boolean;
    .end local v7    # "reset":Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    .line 139
    .local v3, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-virtual {v3, v5}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v9

    throw v9

    .line 126
    .end local v3    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v0    # "cursor":Ljava/lang/String;
    .restart local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v1/DbxDelta$Entry<TMD;>;>;"
    .restart local v6    # "has_more":Ljava/lang/Boolean;
    .restart local v7    # "reset":Ljava/lang/Boolean;
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 135
    :try_start_1
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", field = \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 127
    :pswitch_0
    sget-object v9, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v9, p0, v5, v7}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "reset":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "reset":Ljava/lang/Boolean;
    goto :goto_0

    .line 129
    :pswitch_1
    new-instance v2, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;

    invoke-direct {v2, p1}, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;-><init>(Lcom/dropbox/core/json/JsonReader;)V

    .line 130
    .local v2, "entryReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<Lcom/dropbox/core/v1/DbxDelta$Entry<TMD;>;>;"
    invoke-static {v2}, Lcom/dropbox/core/json/JsonArrayReader;->mk(Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/json/JsonArrayReader;

    move-result-object v9

    invoke-virtual {v9, p0, v5, v1}, Lcom/dropbox/core/json/JsonArrayReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v1/DbxDelta$Entry<TMD;>;>;"
    check-cast v1, Ljava/util/List;

    .line 131
    .restart local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v1/DbxDelta$Entry<TMD;>;>;"
    goto :goto_0

    .line 132
    .end local v2    # "entryReader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<Lcom/dropbox/core/v1/DbxDelta$Entry<TMD;>;>;"
    :pswitch_2
    sget-object v9, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v9, p0, v5, v0}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cursor":Ljava/lang/String;
    goto :goto_0

    .line 133
    :pswitch_3
    sget-object v9, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v9, p0, v5, v6}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "has_more":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "has_more":Ljava/lang/Boolean;
    goto :goto_0

    .line 143
    .end local v4    # "fi":I
    .end local v5    # "fieldName":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 145
    if-nez v7, :cond_2

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"path\""

    invoke-direct {v9, v10, v8}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 146
    :cond_2
    if-nez v1, :cond_3

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"entries\""

    invoke-direct {v9, v10, v8}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 147
    :cond_3
    if-nez v0, :cond_4

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"cursor\""

    invoke-direct {v9, v10, v8}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 148
    :cond_4
    if-nez v6, :cond_5

    new-instance v9, Lcom/dropbox/core/json/JsonReadException;

    const-string v10, "missing field \"has_more\""

    invoke-direct {v9, v10, v8}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v9

    .line 150
    :cond_5
    new-instance v9, Lcom/dropbox/core/v1/DbxDelta;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-direct {v9, v10, v1, v0, v11}, Lcom/dropbox/core/v1/DbxDelta;-><init>(ZLjava/util/List;Ljava/lang/String;Z)V

    return-object v9

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxDelta;
    .locals 1
    .param p1, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/dropbox/core/v1/DbxDelta",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/dropbox/core/v1/DbxDelta$Reader;, "Lcom/dropbox/core/v1/DbxDelta$Reader<TMD;>;"
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDelta$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxDelta$Reader;->read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDelta;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/dropbox/core/v1/DbxDelta$Reader;, "Lcom/dropbox/core/v1/DbxDelta$Reader<TMD;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxDelta$Reader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxDelta;

    move-result-object v0

    return-object v0
.end method
