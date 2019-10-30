.class public abstract Lcom/dropbox/core/json/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final UTC:Ljava/util/TimeZone;

.field private static final months:[Ljava/lang/String;

.field private static final weekdays:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/json/JsonWriter;->UTC:Ljava/util/TimeZone;

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const-string v1, "Sun"

    aput-object v1, v0, v4

    const-string v1, "Mon"

    aput-object v1, v0, v5

    const-string v1, "Tue"

    aput-object v1, v0, v6

    const-string v1, "Wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/json/JsonWriter;->weekdays:[Ljava/lang/String;

    .line 128
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/json/JsonWriter;->months:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "df":Ljava/text/DateFormat;
    sget-object v1, Lcom/dropbox/core/json/JsonWriter;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static zeroPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Ljava/lang/String;
    .param p1, "desiredLength"    # I

    .prologue
    .line 155
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 0
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/json/JsonWriter;->write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 34
    return-void
.end method

.method public final writeDate(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 12
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    const/4 v11, 0x2

    .line 133
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v9, Lcom/dropbox/core/json/JsonDateReader;->UTC:Ljava/util/TimeZone;

    invoke-direct {v1, v9}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 134
    .local v1, "c":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 136
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "year":Ljava/lang/String;
    sget-object v9, Lcom/dropbox/core/json/JsonWriter;->months:[Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    aget-object v5, v9, v10

    .line 138
    .local v5, "month":Ljava/lang/String;
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/dropbox/core/json/JsonWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "day":Ljava/lang/String;
    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/dropbox/core/json/JsonWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "hour":Ljava/lang/String;
    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/dropbox/core/json/JsonWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "minute":Ljava/lang/String;
    const/16 v9, 0xd

    invoke-virtual {v1, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/dropbox/core/json/JsonWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "second":Ljava/lang/String;
    sget-object v9, Lcom/dropbox/core/json/JsonWriter;->weekdays:[Ljava/lang/String;

    const/4 v10, 0x7

    invoke-virtual {v1, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    aget-object v7, v9, v10

    .line 144
    .local v7, "weekday":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " +0000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public final writeDateIso(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    invoke-static {p1}, Lcom/dropbox/core/json/JsonWriter;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public writeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final writeToFile(Ljava/lang/Object;Ljava/io/File;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/json/JsonWriter;->writeToFile(Ljava/lang/Object;Ljava/io/File;Z)V

    .line 107
    return-void
.end method

.method public final writeToFile(Ljava/lang/Object;Ljava/io/File;Z)V
    .locals 2
    .param p2, "file"    # Ljava/io/File;
    .param p3, "indent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v0, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/dropbox/core/json/JsonWriter;->writeToStream(Ljava/lang/Object;Ljava/io/OutputStream;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method

.method public final writeToFile(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/json/JsonWriter;->writeToFile(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 119
    return-void
.end method

.method public final writeToFile(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "indent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/dropbox/core/json/JsonWriter;->writeToFile(Ljava/lang/Object;Ljava/io/File;Z)V

    .line 113
    return-void
.end method

.method public final writeToStream(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/json/JsonWriter;->writeToStream(Ljava/lang/Object;Ljava/io/OutputStream;Z)V

    .line 89
    return-void
.end method

.method public final writeToStream(Ljava/lang/Object;Ljava/io/OutputStream;Z)V
    .locals 2
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "indent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    .line 74
    .local v0, "g":Lcom/fasterxml/jackson/core/JsonGenerator;
    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/json/JsonWriter;->write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    throw v1
.end method

.method public final writeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/json/JsonWriter;->writeToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 6
    .param p2, "indent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/dropbox/core/json/JsonWriter;, "Lcom/dropbox/core/json/JsonWriter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    .line 47
    .local v1, "g":Lcom/fasterxml/jackson/core/JsonGenerator;
    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/json/JsonWriter;->write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 56
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 54
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .end local v1    # "g":Lcom/fasterxml/jackson/core/JsonGenerator;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "Impossible"

    invoke-static {v3, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method
