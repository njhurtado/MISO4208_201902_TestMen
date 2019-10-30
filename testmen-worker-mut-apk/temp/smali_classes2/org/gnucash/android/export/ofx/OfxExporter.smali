.class public Lorg/gnucash/android/export/ofx/OfxExporter;
.super Lorg/gnucash/android/export/Exporter;
.source "OfxExporter.java"


# instance fields
.field private mAccountsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;)V
    .locals 1
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    const-string v0, "OfxExporter"

    sput-object v0, Lorg/gnucash/android/export/ofx/OfxExporter;->LOG_TAG:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    const-string v0, "OfxExporter"

    sput-object v0, Lorg/gnucash/android/export/ofx/OfxExporter;->LOG_TAG:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private generateOfx(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    .line 96
    const-string v5, "TRNUID"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 98
    .local v4, "transactionUid":Lorg/w3c/dom/Element;
    const-string v5, "0"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 100
    const-string v5, "STMTTRNRS"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 101
    .local v3, "statementTransactionResponse":Lorg/w3c/dom/Element;
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 103
    const-string v5, "BANKMSGSRSV1"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 104
    .local v2, "bankmsgs":Lorg/w3c/dom/Element;
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 106
    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 108
    iget-object v1, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 109
    .local v1, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    iget-object v5, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mAccountsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Account;

    .line 110
    .local v0, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getTransactionCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0096

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    :cond_1
    iget-object v6, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v6}, Lorg/gnucash/android/export/ExportParams;->getExportStartTime()Ljava/sql/Timestamp;

    move-result-object v6

    invoke-virtual {v0, p1, v3, v6}, Lorg/gnucash/android/model/Account;->toOfx(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/sql/Timestamp;)V

    .line 122
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->markAsExported(Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v0    # "account":Lorg/gnucash/android/model/Account;
    :cond_2
    return-void
.end method

.method private generateOfxExport()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 134
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 137
    .local v1, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    .local v0, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 143
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string v9, "OFX"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 145
    .local v6, "root":Lorg/w3c/dom/Element;
    const-string v9, "OFX"

    const-string v10, "OFXHEADER=\"200\" VERSION=\"211\" SECURITY=\"NONE\" OLDFILEUID=\"NONE\" NEWFILEUID=\"NONE\""

    invoke-interface {v2, v9, v10}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v5

    .line 146
    .local v5, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 147
    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 149
    invoke-direct {p0, v2, v6}, Lorg/gnucash/android/export/ofx/OfxExporter;->generateOfx(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 151
    iget-object v9, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-object v10, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mContext:Landroid/content/Context;

    const v11, 0x7f0f00bc

    .line 152
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 154
    .local v8, "useXmlHeader":Z
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v9

    invoke-static {v9}, Lorg/gnucash/android/util/PreferencesHelper;->setLastExportTime(Ljava/sql/Timestamp;)V

    .line 156
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 158
    .local v7, "stringWriter":Ljava/io/StringWriter;
    if-eqz v8, :cond_0

    .line 159
    invoke-direct {p0, v2, v7, v12}, Lorg/gnucash/android/export/ofx/OfxExporter;->write(Lorg/w3c/dom/Node;Ljava/io/Writer;Z)V

    .line 160
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 164
    :goto_0
    return-object v9

    .line 138
    .end local v0    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "stringWriter":Ljava/io/StringWriter;
    .end local v8    # "useXmlHeader":Z
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v9, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v10, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v9, v10, v3}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v9

    .line 162
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "document":Lorg/w3c/dom/Document;
    .restart local v5    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    .restart local v7    # "stringWriter":Ljava/io/StringWriter;
    .restart local v8    # "useXmlHeader":Z
    :cond_0
    const-string v9, "OFX"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 163
    .local v4, "ofxNode":Lorg/w3c/dom/Node;
    const/4 v9, 0x1

    invoke-direct {p0, v4, v7, v9}, Lorg/gnucash/android/export/ofx/OfxExporter;->write(Lorg/w3c/dom/Node;Ljava/io/Writer;Z)V

    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENCODING:UTF-8\nOFXHEADER:100\nDATA:OFXSGML\nVERSION:211\nSECURITY:NONE\nCHARSET:UTF-8\nCOMPRESSION:NONE\nOLDFILEUID:NONE\nNEWFILEUID:NONE\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private write(Lorg/w3c/dom/Node;Ljava/io/Writer;Z)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "outputWriter"    # Ljava/io/Writer;
    .param p3, "omitXmlDeclaration"    # Z

    .prologue
    .line 207
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 208
    .local v4, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 209
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 210
    .local v1, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 212
    .local v0, "result":Ljavax/xml/transform/stream/StreamResult;
    const-string v5, "{http://xml.apache.org/xslt}indent-amount"

    const-string v6, "2"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v5, "indent"

    const-string v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz p3, :cond_0

    .line 215
    const-string v5, "omit-xml-declaration"

    const-string v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-virtual {v3, v1, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v1    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v4    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "tfException":Ljavax/xml/transform/TransformerException;
    sget-object v5, Lorg/gnucash/android/export/ofx/OfxExporter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public generateExport()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v5, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v6, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v6}, Lorg/gnucash/android/export/ExportParams;->getExportStartTime()Ljava/sql/Timestamp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getExportableAccounts(Ljava/sql/Timestamp;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mAccountsList:Ljava/util/List;

    .line 171
    iget-object v5, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mAccountsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    :goto_0
    return-object v1

    .line 174
    :cond_0
    const/4 v3, 0x0

    .line 177
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/gnucash/android/export/ofx/OfxExporter;->getExportCacheFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-direct {p0}, Lorg/gnucash/android/export/ofx/OfxExporter;->generateOfxExport()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    if-eqz v4, :cond_1

    .line 185
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/gnucash/android/export/ofx/OfxExporter;->getExportCacheFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v1    # "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v6, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v5, v6, v0}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v5

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v5, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v6, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v5, v6, v0}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 185
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    :cond_2
    throw v5

    .line 186
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v6, p0, Lorg/gnucash/android/export/ofx/OfxExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v5, v6, v0}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v5

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 180
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public getExportMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "text/xml"

    return-object v0
.end method
