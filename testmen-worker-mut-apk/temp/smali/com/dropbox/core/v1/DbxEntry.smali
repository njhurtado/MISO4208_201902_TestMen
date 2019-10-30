.class public abstract Lcom/dropbox/core/v1/DbxEntry;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxEntry$PendingReader;,
        Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;,
        Lcom/dropbox/core/v1/DbxEntry$WithChildren;,
        Lcom/dropbox/core/v1/DbxEntry$File;,
        Lcom/dropbox/core/v1/DbxEntry$Folder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

.field private static final FM_bytes:I = 0x1

.field private static final FM_client_mtime:I = 0x9

.field private static final FM_contents:I = 0xb

.field private static final FM_hash:I = 0xa

.field private static final FM_icon:I = 0x7

.field private static final FM_is_deleted:I = 0x4

.field private static final FM_is_dir:I = 0x3

.field private static final FM_modified:I = 0x8

.field private static final FM_path:I = 0x2

.field private static final FM_photo_info:I = 0xc

.field private static final FM_rev:I = 0x5

.field private static final FM_size:I = 0x0

.field private static final FM_thumb_exists:I = 0x6

.field private static final FM_video_info:I = 0xd

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final iconName:Ljava/lang/String;

.field public final mightHaveThumbnail:Z

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    const-class v1, Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/dropbox/core/v1/DbxEntry;->$assertionsDisabled:Z

    .line 616
    new-instance v1, Lcom/dropbox/core/v1/DbxEntry$1;

    invoke-direct {v1}, Lcom/dropbox/core/v1/DbxEntry$1;-><init>()V

    sput-object v1, Lcom/dropbox/core/v1/DbxEntry;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 625
    new-instance v1, Lcom/dropbox/core/v1/DbxEntry$2;

    invoke-direct {v1}, Lcom/dropbox/core/v1/DbxEntry$2;-><init>()V

    sput-object v1, Lcom/dropbox/core/v1/DbxEntry;->ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;

    .line 990
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    .line 991
    .local v0, "b":Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;
    const-string v1, "size"

    invoke-virtual {v0, v1, v3}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 992
    const-string v1, "bytes"

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 993
    const-string v1, "path"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 994
    const-string v1, "is_dir"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 995
    const-string v1, "is_deleted"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 996
    const-string v1, "rev"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 997
    const-string v1, "thumb_exists"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 998
    const-string v1, "icon"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 999
    const-string v1, "modified"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1000
    const-string v1, "client_mtime"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1001
    const-string v1, "hash"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1002
    const-string v1, "contents"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1003
    const-string v1, "photo_info"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1004
    const-string v1, "video_info"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1005
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v1

    sput-object v1, Lcom/dropbox/core/v1/DbxEntry;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    .line 1006
    return-void

    .end local v0    # "b":Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;
    :cond_0
    move v1, v3

    .line 26
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;
    .param p3, "mightHaveThumbnail"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/dropbox/core/v1/DbxPathV1;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    .line 75
    iput-boolean p3, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v1/DbxEntry$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/dropbox/core/v1/DbxEntry$1;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v1/DbxEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static _read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 28
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "allowDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;Z)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "collector":Lcom/dropbox/core/util/Collector;, "Lcom/dropbox/core/util/Collector<Lcom/dropbox/core/v1/DbxEntry;+TC;>;"
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v24

    .line 851
    .local v24, "top":Lcom/fasterxml/jackson/core/JsonLocation;
    const/4 v10, 0x0

    .line 852
    .local v10, "size":Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 853
    .local v8, "bytes":J
    const/4 v5, 0x0

    .line 854
    .local v5, "path":Ljava/lang/String;
    const/16 v22, 0x0

    .line 855
    .local v22, "is_dir":Ljava/lang/Boolean;
    const/16 v21, 0x0

    .line 856
    .local v21, "is_deleted":Ljava/lang/Boolean;
    const/4 v13, 0x0

    .line 857
    .local v13, "rev":Ljava/lang/String;
    const/16 v23, 0x0

    .line 858
    .local v23, "thumb_exists":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 859
    .local v6, "icon":Ljava/lang/String;
    const/4 v11, 0x0

    .line 860
    .local v11, "modified":Ljava/util/Date;
    const/4 v12, 0x0

    .line 861
    .local v12, "client_mtime":Ljava/util/Date;
    const/16 v20, 0x0

    .line 862
    .local v20, "hash":Ljava/lang/String;
    const/16 v16, 0x0

    .line 863
    .local v16, "contents":Ljava/lang/Object;, "TC;"
    const/4 v14, 0x0

    .line 864
    .local v14, "photo_info":Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    const/4 v15, 0x0

    .line 866
    .end local v16    # "contents":Ljava/lang/Object;, "TC;"
    .local v15, "video_info":Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v25, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v25

    if-ne v7, v0, :cond_2

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    .line 868
    .local v19, "fieldName":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    .line 870
    sget-object v7, Lcom/dropbox/core/v1/DbxEntry;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v18

    .line 872
    .local v18, "fi":I
    packed-switch v18, :pswitch_data_0

    .line 897
    :try_start_0
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bad index: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", field = \""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "icon":Ljava/lang/String;
    .end local v10    # "size":Ljava/lang/String;
    .end local v11    # "modified":Ljava/util/Date;
    .end local v12    # "client_mtime":Ljava/util/Date;
    .end local v13    # "rev":Ljava/lang/String;
    .end local v14    # "photo_info":Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    .end local v15    # "video_info":Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    .end local v20    # "hash":Ljava/lang/String;
    .end local v21    # "is_deleted":Ljava/lang/Boolean;
    .end local v22    # "is_dir":Ljava/lang/Boolean;
    .end local v23    # "thumb_exists":Ljava/lang/Boolean;
    :catch_0
    move-exception v17

    .line 901
    .local v17, "ex":Lcom/dropbox/core/json/JsonReadException;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v7

    throw v7

    .line 873
    .end local v17    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "icon":Ljava/lang/String;
    .restart local v10    # "size":Ljava/lang/String;
    .restart local v11    # "modified":Ljava/util/Date;
    .restart local v12    # "client_mtime":Ljava/util/Date;
    .restart local v13    # "rev":Ljava/lang/String;
    .restart local v14    # "photo_info":Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    .restart local v15    # "video_info":Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    .restart local v20    # "hash":Ljava/lang/String;
    .restart local v21    # "is_deleted":Ljava/lang/Boolean;
    .restart local v22    # "is_dir":Ljava/lang/Boolean;
    .restart local v23    # "thumb_exists":Ljava/lang/Boolean;
    :pswitch_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 874
    :pswitch_1
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v10}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "size":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "size":Ljava/lang/String;
    goto :goto_0

    .line 875
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8, v9}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;J)J

    move-result-wide v8

    goto :goto_0

    .line 876
    :pswitch_3
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v5}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "path":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "path":Ljava/lang/String;
    goto :goto_0

    .line 877
    :pswitch_4
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "is_dir":Ljava/lang/Boolean;
    check-cast v22, Ljava/lang/Boolean;

    .restart local v22    # "is_dir":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 878
    :pswitch_5
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "is_deleted":Ljava/lang/Boolean;
    check-cast v21, Ljava/lang/Boolean;

    .restart local v21    # "is_deleted":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 879
    :pswitch_6
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v13}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rev":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .restart local v13    # "rev":Ljava/lang/String;
    goto/16 :goto_0

    .line 880
    :pswitch_7
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "thumb_exists":Ljava/lang/Boolean;
    check-cast v23, Ljava/lang/Boolean;

    .restart local v23    # "thumb_exists":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 881
    :pswitch_8
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v6}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "icon":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "icon":Ljava/lang/String;
    goto/16 :goto_0

    .line 882
    :pswitch_9
    sget-object v7, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v11}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "modified":Ljava/util/Date;
    check-cast v11, Ljava/util/Date;

    .restart local v11    # "modified":Ljava/util/Date;
    goto/16 :goto_0

    .line 883
    :pswitch_a
    sget-object v7, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v12}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "client_mtime":Ljava/util/Date;
    check-cast v12, Ljava/util/Date;

    .restart local v12    # "client_mtime":Ljava/util/Date;
    goto/16 :goto_0

    .line 885
    :pswitch_b
    if-nez p1, :cond_0

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "not expecting \"hash\" field, since we didn\'t ask for children"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 886
    :cond_0
    sget-object v7, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "hash":Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .restart local v20    # "hash":Ljava/lang/String;
    goto/16 :goto_0

    .line 888
    :pswitch_c
    if-nez p1, :cond_1

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "not expecting \"contents\" field, since we didn\'t ask for children"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 889
    :cond_1
    sget-object v7, Lcom/dropbox/core/v1/DbxEntry;->Reader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/dropbox/core/json/JsonArrayReader;->mk(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/json/JsonArrayReader;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v7, v0, v1, v2}, Lcom/dropbox/core/json/JsonArrayReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "contents":Ljava/lang/Object;, "TC;"
    goto/16 :goto_0

    .line 891
    .end local v16    # "contents":Ljava/lang/Object;, "TC;"
    :pswitch_d
    sget-object v7, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    sget-object v25, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->mk(Lcom/dropbox/core/json/JsonReader;Ljava/lang/Object;)Lcom/dropbox/core/v1/DbxEntry$PendingReader;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v14}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "photo_info":Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    check-cast v14, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    .line 892
    .restart local v14    # "photo_info":Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    goto/16 :goto_0

    .line 894
    :pswitch_e
    sget-object v7, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    sget-object v25, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->mk(Lcom/dropbox/core/json/JsonReader;Ljava/lang/Object;)Lcom/dropbox/core/v1/DbxEntry$PendingReader;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1, v15}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "video_info":Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    check-cast v15, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    .line 895
    .restart local v15    # "video_info":Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    goto/16 :goto_0

    .line 905
    .end local v18    # "fi":I
    .end local v19    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 907
    if-nez v5, :cond_3

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing field \"path\""

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 908
    :cond_3
    if-nez v6, :cond_4

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing field \"icon\""

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 909
    :cond_4
    if-nez v21, :cond_5

    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 910
    :cond_5
    if-nez v22, :cond_6

    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 911
    :cond_6
    if-nez v23, :cond_7

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 913
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v16, :cond_8

    if-eqz v20, :cond_a

    .line 914
    :cond_8
    if-nez v20, :cond_9

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing \"hash\", when we asked for children"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 915
    :cond_9
    if-nez v16, :cond_a

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing \"contents\", when we asked for children"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 919
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 920
    new-instance v4, Lcom/dropbox/core/v1/DbxEntry$Folder;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/dropbox/core/v1/DbxEntry$Folder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 932
    .local v4, "e":Lcom/dropbox/core/v1/DbxEntry;
    :goto_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 933
    if-eqz p2, :cond_11

    .line 934
    const/4 v7, 0x0

    .line 939
    :goto_2
    return-object v7

    .line 924
    .end local v4    # "e":Lcom/dropbox/core/v1/DbxEntry;
    :cond_b
    if-nez v10, :cond_c

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing \"size\" for a file entry"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 925
    :cond_c
    const-wide/16 v26, -0x1

    cmp-long v7, v8, v26

    if-nez v7, :cond_d

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing \"bytes\" for a file entry"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 926
    :cond_d
    if-nez v11, :cond_e

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing \"modified\" for a file entry"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 927
    :cond_e
    if-nez v12, :cond_f

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing \"client_mtime\" for a file entry"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 928
    :cond_f
    if-nez v13, :cond_10

    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "missing \"rev\" for a file entry"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 929
    :cond_10
    new-instance v4, Lcom/dropbox/core/v1/DbxEntry$File;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v4 .. v15}, Lcom/dropbox/core/v1/DbxEntry$File;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)V

    .restart local v4    # "e":Lcom/dropbox/core/v1/DbxEntry;
    goto :goto_1

    .line 936
    :cond_11
    new-instance v7, Lcom/dropbox/core/json/JsonReadException;

    const-string v25, "not expecting \"is_deleted\" entry here"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v7

    .line 939
    :cond_12
    new-instance v7, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v7, v4, v0, v1}, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;-><init>(Lcom/dropbox/core/v1/DbxEntry;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 872
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "x1"    # Lcom/dropbox/core/util/Collector;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/dropbox/core/v1/DbxEntry;->_read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    return-object v0
.end method

.method public static read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 3
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "collector":Lcom/dropbox/core/util/Collector;, "Lcom/dropbox/core/util/Collector<Lcom/dropbox/core/v1/DbxEntry;+TC;>;"
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/dropbox/core/v1/DbxEntry;->_read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    .line 838
    .local v0, "r":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<TC;>;"
    sget-boolean v1, Lcom/dropbox/core/v1/DbxEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness)"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 839
    :cond_0
    return-object v0
.end method

.method public static readMaybeDeleted(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 1
    .param p0, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 831
    .local p1, "collector":Lcom/dropbox/core/util/Collector;, "Lcom/dropbox/core/util/Collector<Lcom/dropbox/core/v1/DbxEntry;+TC;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->_read(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asFile()Lcom/dropbox/core/v1/DbxEntry$File;
.end method

.method public abstract asFolder()Lcom/dropbox/core/v1/DbxEntry$Folder;
.end method

.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2
    .param p1, "w"    # Lcom/dropbox/core/util/DumpWriter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 81
    const-string v0, "iconName"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 82
    const-string v0, "mightHaveThumbnail"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Z)Lcom/dropbox/core/util/DumpWriter;

    .line 83
    return-void
.end method

.method public abstract isFile()Z
.end method

.method public abstract isFolder()Z
.end method

.method protected partialEquals(Lcom/dropbox/core/v1/DbxEntry;)Z
    .locals 3
    .param p1, "o"    # Lcom/dropbox/core/v1/DbxEntry;

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    iget-boolean v2, p1, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    if-ne v1, v2, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected partialHashCode()I
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 121
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 123
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 124
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 125
    return v0

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
