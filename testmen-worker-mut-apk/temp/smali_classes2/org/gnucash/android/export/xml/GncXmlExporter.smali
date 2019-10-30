.class public Lorg/gnucash/android/export/xml/GncXmlExporter;
.super Lorg/gnucash/android/export/Exporter;
.source "GncXmlExporter.java"


# instance fields
.field private mRootTemplateAccount:Lorg/gnucash/android/model/Account;

.field private mTransactionToTemplateAccountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionToTemplateAccountMap:Ljava/util/Map;

    .line 92
    const-string v0, "GncXmlExporter"

    sput-object v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->LOG_TAG:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionToTemplateAccountMap:Ljava/util/Map;

    .line 103
    const-string v0, "GncXmlExporter"

    sput-object v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->LOG_TAG:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private exportAccounts(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 17
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "full_name ASC"

    invoke-virtual/range {v13 .. v16}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 134
    const/4 v13, 0x0

    const-string v14, "gnc:account"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const/4 v13, 0x0

    const-string v14, "version"

    const-string v15, "2.0.0"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    const/4 v13, 0x0

    const-string v14, "act:name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    const-string v13, "name"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const/4 v13, 0x0

    const-string v14, "act:name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const/4 v13, 0x0

    const-string v14, "act:id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const/4 v13, 0x0

    const-string v14, "type"

    const-string v15, "guid"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string v13, "uid"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const/4 v13, 0x0

    const-string v14, "act:id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const/4 v13, 0x0

    const-string v14, "act:type"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const-string v13, "type"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "acct_type":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const/4 v13, 0x0

    const-string v14, "act:type"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const/4 v13, 0x0

    const-string v14, "act:commodity"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const/4 v13, 0x0

    const-string v14, "cmdty:space"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const-string v13, "ISO4217"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const/4 v13, 0x0

    const-string v14, "cmdty:space"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const/4 v13, 0x0

    const-string v14, "cmdty:id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    const-string v13, "currency_code"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "acctCurrencyCode":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const/4 v13, 0x0

    const-string v14, "cmdty:id"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    const/4 v13, 0x0

    const-string v14, "act:commodity"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v13

    invoke-virtual {v13, v2}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v5

    .line 162
    .local v5, "commodity":Lorg/gnucash/android/model/Commodity;
    const/4 v13, 0x0

    const-string v14, "act:commodity-scu"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    invoke-virtual {v5}, Lorg/gnucash/android/model/Commodity;->getSmallestFraction()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const/4 v13, 0x0

    const-string v14, "act:commodity-scu"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v13, "description"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "description":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 168
    const/4 v13, 0x0

    const-string v14, "act:description"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    const/4 v13, 0x0

    const-string v14, "act:description"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v10, "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v11, "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v12, "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "placeholder"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v13, "string"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v13, "is_placeholder"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v13, "color_code"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "color":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 182
    const-string v13, "color"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v13, "string"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    const-string v13, "default_transfer_account_uid"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "defaultTransferAcctUID":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 189
    const-string v13, "default_transfer_account"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v13, "string"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_2
    const-string v13, "favorite"

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v13, "string"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v13, "favorite"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v13, 0x0

    const-string v14, "act:slots"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11, v12}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportSlots(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 200
    const/4 v13, 0x0

    const-string v14, "act:slots"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string v13, "parent_account_uid"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "parentUID":Ljava/lang/String;
    const-string v13, "ROOT"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 205
    const/4 v13, 0x0

    const-string v14, "act:parent"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    const/4 v13, 0x0

    const-string v14, "type"

    const-string v15, "guid"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const/4 v13, 0x0

    const-string v14, "act:parent"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    :goto_3
    const/4 v13, 0x0

    const-string v14, "gnc:account"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 178
    .end local v4    # "color":Ljava/lang/String;
    .end local v7    # "defaultTransferAcctUID":Ljava/lang/String;
    .end local v9    # "parentUID":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 196
    .restart local v4    # "color":Ljava/lang/String;
    .restart local v7    # "defaultTransferAcctUID":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 210
    .restart local v9    # "parentUID":Ljava/lang/String;
    :cond_5
    const-string v13, "export"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "root account : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "uid"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 214
    .end local v2    # "acctCurrencyCode":Ljava/lang/String;
    .end local v3    # "acct_type":Ljava/lang/String;
    .end local v4    # "color":Ljava/lang/String;
    .end local v5    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v7    # "defaultTransferAcctUID":Ljava/lang/String;
    .end local v8    # "description":Ljava/lang/String;
    .end local v9    # "parentUID":Ljava/lang/String;
    .end local v10    # "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 215
    return-void
.end method

.method private exportBudgets(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 14
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    iget-object v8, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    invoke-virtual {v8}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->fetchAllRecords()Landroid/database/Cursor;

    move-result-object v3

    .line 720
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 721
    iget-object v8, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    invoke-virtual {v8, v3}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Budget;

    move-result-object v1

    .line 722
    .local v1, "budget":Lorg/gnucash/android/model/Budget;
    const/4 v8, 0x0

    const-string v9, "gnc:budget"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    const/4 v8, 0x0

    const-string v9, "version"

    const-string v10, "2.0.0"

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    const/4 v8, 0x0

    const-string v9, "bgt:id"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    const/4 v8, 0x0

    const-string v9, "type"

    const-string v10, "guid"

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    const/4 v8, 0x0

    const-string v9, "bgt:id"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    const/4 v8, 0x0

    const-string v9, "bgt:name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 729
    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    const/4 v8, 0x0

    const-string v9, "bgt:name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 731
    const/4 v8, 0x0

    const-string v9, "bgt:description"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 732
    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getDescription()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, ""

    :goto_1
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 733
    const/4 v8, 0x0

    const-string v9, "bgt:description"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    const/4 v8, 0x0

    const-string v9, "bgt:num-periods"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 735
    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getNumberOfPeriods()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 736
    const/4 v8, 0x0

    const-string v9, "bgt:num-periods"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 737
    const/4 v8, 0x0

    const-string v9, "bgt:recurrence"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportRecurrence(Lorg/xmlpull/v1/XmlSerializer;Lorg/gnucash/android/model/Recurrence;)V

    .line 739
    const/4 v8, 0x0

    const-string v9, "bgt:recurrence"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 742
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v5, "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v6, "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v7, "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v9, "bgt:slots"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 747
    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getExpandedBudgetAmounts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/BudgetAmount;

    .line 748
    .local v2, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    const/4 v9, 0x0

    const-string v10, "slot"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 749
    const/4 v9, 0x0

    const-string v10, "slot:key"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    invoke-virtual {v2}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    const/4 v9, 0x0

    const-string v10, "slot:key"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    invoke-virtual {v2}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 754
    .local v0, "amount":Lorg/gnucash/android/model/Money;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 755
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 756
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 757
    const/4 v4, 0x0

    .local v4, "period":I
    :goto_3
    int-to-long v10, v4

    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getNumberOfPeriods()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_1

    .line 758
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    const-string v9, "numeric"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 732
    .end local v0    # "amount":Lorg/gnucash/android/model/Money;
    .end local v2    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v4    # "period":I
    .end local v5    # "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Lorg/gnucash/android/model/Budget;->getDescription()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 764
    .restart local v0    # "amount":Lorg/gnucash/android/model/Money;
    .restart local v2    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .restart local v4    # "period":I
    .restart local v5    # "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v9, 0x0

    const-string v10, "slot:value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    const/4 v9, 0x0

    const-string v10, "type"

    const-string v11, "frame"

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    invoke-direct {p0, p1, v5, v6, v7}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportSlots(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 767
    const/4 v9, 0x0

    const-string v10, "slot:value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    const/4 v9, 0x0

    const-string v10, "slot"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 771
    .end local v0    # "amount":Lorg/gnucash/android/model/Money;
    .end local v2    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v4    # "period":I
    :cond_2
    const/4 v8, 0x0

    const-string v9, "bgt:slots"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    const/4 v8, 0x0

    const-string v9, "gnc:budget"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 774
    .end local v1    # "budget":Lorg/gnucash/android/model/Budget;
    .end local v5    # "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 775
    return-void
.end method

.method private exportCommodities(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Commodity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "commodities":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Commodity;>;"
    const/4 v4, 0x0

    .line 624
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Commodity;

    .line 625
    .local v0, "commodity":Lorg/gnucash/android/model/Commodity;
    const-string v2, "gnc:commodity"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    const-string v2, "version"

    const-string v3, "2.0.0"

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    const-string v2, "cmdty:space"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    const-string v2, "ISO4217"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    const-string v2, "cmdty:space"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    const-string v2, "cmdty:id"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    const-string v2, "cmdty:id"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    const-string v2, "gnc:commodity"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 635
    .end local v0    # "commodity":Lorg/gnucash/android/model/Commodity;
    :cond_0
    return-void
.end method

.method private exportPrices(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 638
    const-string v3, "gnc:pricedb"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    const-string v3, "version"

    const-string v4, "1"

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    iget-object v3, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->fetchAllRecords()Landroid/database/Cursor;

    move-result-object v0

    .line 642
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const/4 v3, 0x0

    const-string v4, "price"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    const/4 v3, 0x0

    const-string v4, "price:id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    const/4 v3, 0x0

    const-string v4, "type"

    const-string v5, "guid"

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const-string v3, "uid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    const/4 v3, 0x0

    const-string v4, "price:id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    const/4 v3, 0x0

    const-string v4, "price:commodity"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    const/4 v3, 0x0

    const-string v4, "cmdty:space"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    const-string v3, "ISO4217"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const/4 v3, 0x0

    const-string v4, "cmdty:space"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    const/4 v3, 0x0

    const-string v4, "cmdty:id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    iget-object v3, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    const-string v4, "commodity_guid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    const/4 v3, 0x0

    const-string v4, "cmdty:id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    const/4 v3, 0x0

    const-string v4, "price:commodity"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    const/4 v3, 0x0

    const-string v4, "price:currency"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    const/4 v3, 0x0

    const-string v4, "cmdty:space"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    const-string v3, "ISO4217"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 662
    const/4 v3, 0x0

    const-string v4, "cmdty:space"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 663
    const/4 v3, 0x0

    const-string v4, "cmdty:id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 664
    iget-object v3, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    const-string v4, "currency_guid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 665
    const/4 v3, 0x0

    const-string v4, "cmdty:id"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    const/4 v3, 0x0

    const-string v4, "price:currency"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    const-string v3, "date"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/gnucash/android/export/xml/GncXmlHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "strDate":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "price:time"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    const/4 v3, 0x0

    const-string v4, "ts:date"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    const/4 v3, 0x0

    const-string v4, "ts:date"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 673
    const/4 v3, 0x0

    const-string v4, "price:time"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    const/4 v3, 0x0

    const-string v4, "price:source"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    const-string v3, "source"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    const/4 v3, 0x0

    const-string v4, "price:source"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 681
    const/4 v3, 0x0

    const-string v4, "price:type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 683
    const/4 v3, 0x0

    const-string v4, "price:type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 686
    :cond_0
    const/4 v3, 0x0

    const-string v4, "price:value"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value_num"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "value_denom"

    .line 688
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 689
    const/4 v3, 0x0

    const-string v4, "price:value"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    const/4 v3, 0x0

    const-string v4, "price"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 693
    .end local v1    # "strDate":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 695
    const-string v3, "gnc:pricedb"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    return-void
.end method

.method private exportRecurrence(Lorg/xmlpull/v1/XmlSerializer;Lorg/gnucash/android/model/Recurrence;)V
    .locals 5
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "recurrence"    # Lorg/gnucash/android/model/Recurrence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 706
    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v0

    .line 707
    .local v0, "periodType":Lorg/gnucash/android/model/PeriodType;
    const-string v1, "recurrence:mult"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 709
    const-string v1, "recurrence:mult"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    const-string v1, "recurrence:period_type"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-virtual {v0}, Lorg/gnucash/android/model/PeriodType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    const-string v1, "recurrence:period_type"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getPeriodStart()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 715
    .local v2, "recurrenceStartTime":J
    const-string v1, "recurrence:start"

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/gnucash/android/export/xml/GncXmlExporter;->serializeDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 716
    return-void
.end method

.method private exportScheduledTransactions(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 33
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-object/from16 v28, v0

    const-string v29, "type=?"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    sget-object v32, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 504
    invoke-virtual/range {v32 .. v32}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x0

    .line 503
    invoke-virtual/range {v28 .. v31}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 506
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/ScheduledAction;

    move-result-object v24

    .line 508
    .local v24, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->getActionUID()Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, "actionUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionToTemplateAccountMap:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/Account;

    .line 511
    .local v6, "accountUID":Lorg/gnucash/android/model/Account;
    if-eqz v6, :cond_0

    .line 514
    const/16 v28, 0x0

    const-string v29, "gnc:schedxaction"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    const/16 v28, 0x0

    const-string v29, "version"

    const-string v30, "2.0.0"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    const/16 v28, 0x0

    const-string v29, "sx:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v15

    .line 519
    .local v15, "nameUID":Ljava/lang/String;
    const/16 v28, 0x0

    const-string v29, "type"

    const-string v30, "guid"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    const/16 v28, 0x0

    const-string v29, "sx:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    const/16 v28, 0x0

    const-string v29, "sx:name"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->getActionType()Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v7

    .line 525
    .local v7, "actionType":Lorg/gnucash/android/model/ScheduledAction$ActionType;
    sget-object v28, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-object/from16 v0, v28

    if-ne v7, v0, :cond_3

    .line 526
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v28

    const-string v29, "name"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 527
    .local v11, "description":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    .end local v11    # "description":Ljava/lang/String;
    :goto_1
    const/16 v28, 0x0

    const-string v29, "sx:name"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    const/16 v28, 0x0

    const-string v29, "sx:enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->isEnabled()Z

    move-result v28

    if-eqz v28, :cond_4

    const-string v28, "y"

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    const/16 v28, 0x0

    const-string v29, "sx:enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    const/16 v28, 0x0

    const-string v29, "sx:autoCreate"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->shouldAutoCreate()Z

    move-result v28

    if-eqz v28, :cond_5

    const-string v28, "y"

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 537
    const/16 v28, 0x0

    const-string v29, "sx:autoCreate"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    const/16 v28, 0x0

    const-string v29, "sx:autoCreateNotify"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->shouldAutoNotify()Z

    move-result v28

    if-eqz v28, :cond_6

    const-string v28, "y"

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    const/16 v28, 0x0

    const-string v29, "sx:autoCreateNotify"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    const/16 v28, 0x0

    const-string v29, "sx:advanceCreateDays"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->getAdvanceCreateDays()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    const/16 v28, 0x0

    const-string v29, "sx:advanceCreateDays"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    const/16 v28, 0x0

    const-string v29, "sx:advanceRemindDays"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    invoke-virtual/range {v24 .. v24}, Lorg/gnucash/android/model/ScheduledAction;->getAdvanceNotifyDays()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    const/16 v28, 0x0

    const-string v29, "sx:advanceRemindDays"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    const/16 v28, 0x0

    const-string v29, "sx:instanceCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    const-string v28, "uid"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 549
    .local v25, "scheduledActionUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getActionInstanceCount(Ljava/lang/String;)J

    move-result-wide v16

    .line 550
    .local v16, "instanceCount":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    const/16 v28, 0x0

    const-string v29, "sx:instanceCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    const-string v28, "created_at"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 555
    .local v9, "createdTimestamp":Ljava/lang/String;
    invoke-static {v9}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v22

    .line 556
    .local v22, "scheduleStartTime":J
    const-string v28, "sx:start"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/gnucash/android/export/xml/GncXmlExporter;->serializeDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 558
    const-string v28, "last_run"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 559
    .local v18, "lastRunTime":J
    const-wide/16 v28, 0x0

    cmp-long v28, v18, v28

    if-lez v28, :cond_1

    .line 560
    const-string v28, "sx:last"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/gnucash/android/export/xml/GncXmlExporter;->serializeDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 563
    :cond_1
    const-string v28, "end_time"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 564
    .local v12, "endTime":J
    const-wide/16 v28, 0x0

    cmp-long v28, v12, v28

    if-lez v28, :cond_7

    .line 566
    const-string v28, "sx:end"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v12, v13}, Lorg/gnucash/android/export/xml/GncXmlExporter;->serializeDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 580
    :goto_5
    const-string v28, "tag"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 581
    .local v26, "tag":Ljava/lang/String;
    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_2

    .line 582
    const/16 v28, 0x0

    const-string v29, "sx:tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    const/16 v28, 0x0

    const-string v29, "sx:tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    :cond_2
    const/16 v28, 0x0

    const-string v29, "sx:templ-acct"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    const/16 v28, 0x0

    const-string v29, "type"

    const-string v30, "guid"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    invoke-virtual {v6}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    const/16 v28, 0x0

    const-string v29, "sx:templ-acct"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    const/16 v28, 0x0

    const-string v29, "sx:schedule"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    const/16 v28, 0x0

    const-string v29, "gnc:recurrence"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    const/16 v28, 0x0

    const-string v29, "version"

    const-string v30, "1.0.0"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    const-string v28, "recurrence_uid"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 598
    .local v21, "recurrenceUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v20

    check-cast v20, Lorg/gnucash/android/model/Recurrence;

    .line 599
    .local v20, "recurrence":Lorg/gnucash/android/model/Recurrence;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportRecurrence(Lorg/xmlpull/v1/XmlSerializer;Lorg/gnucash/android/model/Recurrence;)V

    .line 600
    const/16 v28, 0x0

    const-string v29, "gnc:recurrence"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    const/16 v28, 0x0

    const-string v29, "sx:schedule"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 603
    const/16 v28, 0x0

    const-string v29, "gnc:schedxaction"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 529
    .end local v9    # "createdTimestamp":Ljava/lang/String;
    .end local v12    # "endTime":J
    .end local v16    # "instanceCount":J
    .end local v18    # "lastRunTime":J
    .end local v20    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    .end local v21    # "recurrenceUID":Ljava/lang/String;
    .end local v22    # "scheduleStartTime":J
    .end local v25    # "scheduledActionUID":Ljava/lang/String;
    .end local v26    # "tag":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 533
    :cond_4
    const-string v28, "n"

    goto/16 :goto_2

    .line 536
    :cond_5
    const-string v28, "n"

    goto/16 :goto_3

    .line 539
    :cond_6
    const-string v28, "n"

    goto/16 :goto_4

    .line 568
    .restart local v9    # "createdTimestamp":Ljava/lang/String;
    .restart local v12    # "endTime":J
    .restart local v16    # "instanceCount":J
    .restart local v18    # "lastRunTime":J
    .restart local v22    # "scheduleStartTime":J
    .restart local v25    # "scheduledActionUID":Ljava/lang/String;
    :cond_7
    const-string v28, "total_frequency"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 569
    .local v27, "totalFrequency":I
    const/16 v28, 0x0

    const-string v29, "sx:num-occur"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 571
    const/16 v28, 0x0

    const-string v29, "sx:num-occur"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    const-string v28, "execution_count"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 575
    .local v14, "executionCount":I
    const/16 v28, 0x0

    const-string v29, "sx:rem-occur"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    sub-int v28, v27, v14

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    const/16 v28, 0x0

    const-string v29, "sx:rem-occur"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 605
    .end local v6    # "accountUID":Lorg/gnucash/android/model/Account;
    .end local v7    # "actionType":Lorg/gnucash/android/model/ScheduledAction$ActionType;
    .end local v8    # "actionUID":Ljava/lang/String;
    .end local v9    # "createdTimestamp":Ljava/lang/String;
    .end local v12    # "endTime":J
    .end local v14    # "executionCount":I
    .end local v15    # "nameUID":Ljava/lang/String;
    .end local v16    # "instanceCount":J
    .end local v18    # "lastRunTime":J
    .end local v22    # "scheduleStartTime":J
    .end local v24    # "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    .end local v25    # "scheduledActionUID":Ljava/lang/String;
    .end local v27    # "totalFrequency":I
    :cond_8
    return-void
.end method

.method private exportSlots(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "slotKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "slotType":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "slotValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 110
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 111
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 126
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    const-string v1, "slot"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string v1, "slot:key"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string v1, "slot:key"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v1, "slot:value"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string v2, "type"

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    const-string v1, "slot:value"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    const-string v1, "slot"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private exportTemplateAccounts(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V
    .locals 6
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Collection",
            "<",
            "Lorg/gnucash/android/model/Account;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "accountList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/gnucash/android/model/Account;>;"
    const/4 v5, 0x0

    .line 225
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Account;

    .line 226
    .local v0, "account":Lorg/gnucash/android/model/Account;
    const-string v3, "gnc:account"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string v3, "version"

    const-string v4, "2.0.0"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    const-string v3, "act:name"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const-string v3, "act:name"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string v3, "act:id"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    const-string v3, "type"

    const-string v4, "guid"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    const-string v3, "act:id"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const-string v3, "act:type"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const-string v3, "act:type"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const-string v3, "act:commodity"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string v3, "cmdty:space"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const-string v3, "template"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string v3, "cmdty:space"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    const-string v3, "cmdty:id"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    const-string v1, "template"

    .line 248
    .local v1, "acctCurrencyCode":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const-string v3, "cmdty:id"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const-string v3, "act:commodity"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    const-string v3, "act:commodity-scu"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string v3, "1"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string v3, "act:commodity-scu"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v3

    sget-object v4, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mRootTemplateAccount:Lorg/gnucash/android/model/Account;

    if-eqz v3, :cond_0

    .line 257
    const-string v3, "act:parent"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    const-string v3, "type"

    const-string v4, "guid"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    iget-object v3, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mRootTemplateAccount:Lorg/gnucash/android/model/Account;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    const-string v3, "act:parent"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    :cond_0
    const-string v3, "gnc:account"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 264
    .end local v0    # "account":Lorg/gnucash/android/model/Account;
    .end local v1    # "acctCurrencyCode":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private exportTransactions(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 40
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "exportTemplates"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v35, "transactions.is_template=0"

    .line 274
    .local v35, "where":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 275
    const-string v35, "transactions.is_template=1"

    .line 277
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-object/from16 v36, v0

    const/16 v37, 0x10

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const-string v39, "transactions.uid AS trans_uid"

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const-string v39, "transactions.name AS trans_desc"

    aput-object v39, v37, v38

    const/16 v38, 0x2

    const-string v39, "transactions.description AS trans_notes"

    aput-object v39, v37, v38

    const/16 v38, 0x3

    const-string v39, "transactions.timestamp AS trans_time"

    aput-object v39, v37, v38

    const/16 v38, 0x4

    const-string v39, "transactions.is_exported AS trans_exported"

    aput-object v39, v37, v38

    const/16 v38, 0x5

    const-string v39, "transactions.currency_code AS trans_currency"

    aput-object v39, v37, v38

    const/16 v38, 0x6

    const-string v39, "transactions.created_at AS trans_date_posted"

    aput-object v39, v37, v38

    const/16 v38, 0x7

    const-string v39, "transactions.scheduled_action_uid AS trans_from_sched_action"

    aput-object v39, v37, v38

    const/16 v38, 0x8

    const-string v39, "splits.uid AS split_uid"

    aput-object v39, v37, v38

    const/16 v38, 0x9

    const-string v39, "splits.memo AS split_memo"

    aput-object v39, v37, v38

    const/16 v38, 0xa

    const-string v39, "splits.type AS split_type"

    aput-object v39, v37, v38

    const/16 v38, 0xb

    const-string v39, "splits.value_num AS split_value_num"

    aput-object v39, v37, v38

    const/16 v38, 0xc

    const-string v39, "splits.value_denom AS split_value_denom"

    aput-object v39, v37, v38

    const/16 v38, 0xd

    const-string v39, "splits.quantity_num AS split_quantity_num"

    aput-object v39, v37, v38

    const/16 v38, 0xe

    const-string v39, "splits.quantity_denom AS split_quantity_denom"

    aput-object v39, v37, v38

    const/16 v38, 0xf

    const-string v39, "splits.account_uid AS split_acct_uid"

    aput-object v39, v37, v38

    const/16 v38, 0x0

    const-string v39, "transactions.timestamp ASC , transactions.uid ASC "

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchTransactionsWithSplits([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 297
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v12, ""

    .line 298
    .local v12, "lastTrxUID":Ljava/lang/String;
    const/16 v31, 0x0

    .line 299
    .local v31, "trnCommodity":Lorg/gnucash/android/model/Commodity;
    const-string v11, "100"

    .line 301
    .local v11, "denomString":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 302
    new-instance v36, Lorg/gnucash/android/model/Account;

    const-string v37, "Template Root"

    invoke-direct/range {v36 .. v37}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/export/xml/GncXmlExporter;->mRootTemplateAccount:Lorg/gnucash/android/model/Account;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mRootTemplateAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v36, v0

    sget-object v37, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    invoke-virtual/range {v36 .. v37}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionToTemplateAccountMap:Ljava/util/Map;

    move-object/from16 v36, v0

    const-string v37, " "

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mRootTemplateAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v38, v0

    invoke-interface/range {v36 .. v38}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v36

    if-eqz v36, :cond_1

    .line 309
    new-instance v6, Lorg/gnucash/android/model/Account;

    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v6, v0}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    .line 310
    .local v6, "account":Lorg/gnucash/android/model/Account;
    sget-object v36, Lorg/gnucash/android/model/AccountType;->BANK:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 311
    const-string v36, "trans_uid"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 312
    .local v32, "trnUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionToTemplateAccountMap:Ljava/util/Map;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    .end local v6    # "account":Lorg/gnucash/android/model/Account;
    .end local v32    # "trnUID":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionToTemplateAccountMap:Ljava/util/Map;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportTemplateAccounts(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V

    .line 317
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 322
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v36

    if-eqz v36, :cond_f

    .line 323
    const-string v36, "trans_uid"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "curTrxUID":Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_6

    .line 325
    const-string v36, ""

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_3

    .line 326
    const/16 v36, 0x0

    const-string v37, "trn:splits"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const/16 v36, 0x0

    const-string v37, "gnc:transaction"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    :cond_3
    const/16 v36, 0x0

    const-string v37, "gnc:transaction"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    const/16 v36, 0x0

    const-string v37, "version"

    const-string v38, "2.0.0"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    const/16 v36, 0x0

    const-string v37, "trn:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    const/16 v36, 0x0

    const-string v37, "type"

    const-string v38, "guid"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    const/16 v36, 0x0

    const-string v37, "trn:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    const-string v36, "trans_currency"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, "currencyCode":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v31

    .line 340
    const/16 v36, 0x0

    const-string v37, "trn:currency"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    const/16 v36, 0x0

    const-string v37, "cmdty:space"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    const-string v36, "ISO4217"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const/16 v36, 0x0

    const-string v37, "cmdty:space"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const/16 v36, 0x0

    const-string v37, "cmdty:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    const/16 v36, 0x0

    const-string v37, "cmdty:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 347
    const/16 v36, 0x0

    const-string v37, "trn:currency"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    const-string v36, "trans_time"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Lorg/gnucash/android/export/xml/GncXmlHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v28

    .line 350
    .local v28, "strDate":Ljava/lang/String;
    const/16 v36, 0x0

    const-string v37, "trn:date-posted"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    const/16 v36, 0x0

    const-string v37, "ts:date"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const/16 v36, 0x0

    const-string v37, "ts:date"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    const/16 v36, 0x0

    const-string v37, "trn:date-posted"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    const-string v36, "trans_date_posted"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v30

    .line 358
    .local v30, "timeEntered":Ljava/sql/Timestamp;
    invoke-virtual/range {v30 .. v30}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Lorg/gnucash/android/export/xml/GncXmlHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v10

    .line 359
    .local v10, "dateEntered":Ljava/lang/String;
    const/16 v36, 0x0

    const-string v37, "trn:date-entered"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    const/16 v36, 0x0

    const-string v37, "ts:date"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    const/16 v36, 0x0

    const-string v37, "ts:date"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    const/16 v36, 0x0

    const-string v37, "trn:date-entered"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const/16 v36, 0x0

    const-string v37, "trn:description"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string v36, "trans_desc"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    const/16 v36, 0x0

    const-string v37, "trn:description"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    move-object v12, v7

    .line 371
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v16, "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v18, "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v20, "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v36, "trans_notes"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 376
    .local v14, "notes":Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_4

    .line 377
    const-string v36, "notes"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v36, "string"

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_4
    const-string v36, "trans_from_sched_action"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 383
    .local v15, "scheduledActionUID":Ljava/lang/String;
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_5

    .line 384
    const-string v36, "from-sched-xaction"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v36, "guid"

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_5
    const/16 v36, 0x0

    const-string v37, "trn:slots"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportSlots(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 390
    const/16 v36, 0x0

    const-string v37, "trn:slots"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const/16 v36, 0x0

    const-string v37, "trn:splits"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    .end local v8    # "currencyCode":Ljava/lang/String;
    .end local v10    # "dateEntered":Ljava/lang/String;
    .end local v14    # "notes":Ljava/lang/String;
    .end local v15    # "scheduledActionUID":Ljava/lang/String;
    .end local v16    # "slotKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "slotType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "slotValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "strDate":Ljava/lang/String;
    .end local v30    # "timeEntered":Ljava/sql/Timestamp;
    :cond_6
    const/16 v36, 0x0

    const-string v37, "trn:split"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    const/16 v36, 0x0

    const-string v37, "split:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    const/16 v36, 0x0

    const-string v37, "type"

    const-string v38, "guid"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const-string v36, "split_uid"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    const/16 v36, 0x0

    const-string v37, "split:id"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    const-string v36, "split_memo"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 403
    .local v13, "memo":Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_7

    .line 404
    const/16 v36, 0x0

    const-string v37, "split:memo"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    const/16 v36, 0x0

    const-string v37, "split:memo"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    :cond_7
    const/16 v36, 0x0

    const-string v37, "split:reconciled-state"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    const-string v36, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    const/16 v36, 0x0

    const-string v37, "split:reconciled-state"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    const-string v36, "split_type"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 415
    .local v33, "trxType":Ljava/lang/String;
    const-string v36, "split_value_num"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 416
    .local v27, "splitValueNum":I
    const-string v36, "split_value_denom"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 417
    .local v26, "splitValueDenom":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v36 .. v39}, Lorg/gnucash/android/model/Money;->getBigDecimal(JJ)Ljava/math/BigDecimal;

    move-result-object v23

    .line 418
    .local v23, "splitAmount":Ljava/math/BigDecimal;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "0/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 419
    .local v29, "strValue":Ljava/lang/String;
    if-nez p2, :cond_8

    .line 420
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "CREDIT"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    const-string v36, "-"

    :goto_2
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 422
    :cond_8
    const/16 v36, 0x0

    const-string v37, "split:value"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const/16 v36, 0x0

    const-string v37, "split:value"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string v36, "split_quantity_num"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 427
    .local v25, "splitQuantityNum":Ljava/lang/String;
    const-string v36, "split_quantity_denom"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 428
    .local v24, "splitQuantityDenom":Ljava/lang/String;
    if-nez p2, :cond_9

    .line 429
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "CREDIT"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    const-string v36, "-"

    :goto_3
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 431
    :cond_9
    const/16 v36, 0x0

    const-string v37, "split:quantity"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const/16 v36, 0x0

    const-string v37, "split:quantity"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const/16 v36, 0x0

    const-string v37, "split:account"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    const/16 v36, 0x0

    const-string v37, "type"

    const-string v38, "guid"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    if-eqz p2, :cond_d

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionToTemplateAccountMap:Ljava/util/Map;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/gnucash/android/model/Account;

    invoke-virtual/range {v36 .. v36}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v22

    .line 444
    .local v22, "splitAccountUID":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    const/16 v36, 0x0

    const-string v37, "split:account"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    if-eqz p2, :cond_a

    .line 449
    const/16 v36, 0x0

    const-string v37, "split:slots"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const/16 v36, 0x0

    const-string v37, "slot"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const/16 v36, 0x0

    const-string v37, "slot:key"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const-string v36, "sched-xaction"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    const/16 v36, 0x0

    const-string v37, "slot:key"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    const/16 v36, 0x0

    const-string v37, "slot:value"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    const/16 v36, 0x0

    const-string v37, "type"

    const-string v38, "frame"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v17, "slotKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v19, "slotTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v21, "slotValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v36, "account"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v36, "guid"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v36, "split_acct_uid"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-static/range {v33 .. v33}, Lorg/gnucash/android/model/TransactionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;

    move-result-object v34

    .line 464
    .local v34, "type":Lorg/gnucash/android/model/TransactionType;
    sget-object v36, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_e

    .line 465
    const-string v36, "credit-formula"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v36, "string"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static/range {v23 .. v23}, Lorg/gnucash/android/export/xml/GncXmlHelper;->formatTemplateSplitAmount(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v36, "credit-numeric"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v36, "numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/gnucash/android/export/xml/GncXmlHelper;->formatSplitAmount(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportSlots(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 482
    const/16 v36, 0x0

    const-string v37, "slot:value"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    const/16 v36, 0x0

    const-string v37, "slot"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 484
    const/16 v36, 0x0

    const-string v37, "split:slots"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    .end local v17    # "slotKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "slotTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "slotValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "type":Lorg/gnucash/android/model/TransactionType;
    :cond_a
    const/16 v36, 0x0

    const-string v37, "trn:split"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 420
    .end local v22    # "splitAccountUID":Ljava/lang/String;
    .end local v24    # "splitQuantityDenom":Ljava/lang/String;
    .end local v25    # "splitQuantityNum":Ljava/lang/String;
    :cond_b
    const-string v36, ""

    goto/16 :goto_2

    .line 429
    .restart local v24    # "splitQuantityDenom":Ljava/lang/String;
    .restart local v25    # "splitQuantityNum":Ljava/lang/String;
    :cond_c
    const-string v36, ""

    goto/16 :goto_3

    .line 442
    :cond_d
    const-string v36, "split_acct_uid"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "splitAccountUID":Ljava/lang/String;
    goto/16 :goto_4

    .line 472
    .restart local v17    # "slotKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "slotTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "slotValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "type":Lorg/gnucash/android/model/TransactionType;
    :cond_e
    const-string v36, "debit-formula"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v36, "string"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-static/range {v23 .. v23}, Lorg/gnucash/android/export/xml/GncXmlHelper;->formatTemplateSplitAmount(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    const-string v36, "debit-numeric"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v36, "numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/gnucash/android/export/xml/GncXmlHelper;->formatSplitAmount(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 489
    .end local v7    # "curTrxUID":Ljava/lang/String;
    .end local v13    # "memo":Ljava/lang/String;
    .end local v17    # "slotKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "slotTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "slotValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "splitAccountUID":Ljava/lang/String;
    .end local v23    # "splitAmount":Ljava/math/BigDecimal;
    .end local v24    # "splitQuantityDenom":Ljava/lang/String;
    .end local v25    # "splitQuantityNum":Ljava/lang/String;
    .end local v26    # "splitValueDenom":I
    .end local v27    # "splitValueNum":I
    .end local v29    # "strValue":Ljava/lang/String;
    .end local v33    # "trxType":Ljava/lang/String;
    .end local v34    # "type":Lorg/gnucash/android/model/TransactionType;
    :cond_f
    const-string v36, ""

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_10

    .line 490
    const/16 v36, 0x0

    const-string v37, "trn:splits"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const/16 v36, 0x0

    const-string v37, "gnc:transaction"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    :cond_10
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 494
    return-void
.end method

.method private serializeDate(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .locals 3
    .param p1, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "timeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    const-string v0, "gdate"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    sget-object v0, Lorg/gnucash/android/export/xml/GncXmlHelper;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    const-string v0, "gdate"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    return-void
.end method


# virtual methods
.method public generateExport()Ljava/util/List;
    .locals 10
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
    .line 779
    const/4 v6, 0x0

    .line 780
    .local v6, "writer":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0}, Lorg/gnucash/android/export/xml/GncXmlExporter;->getExportCacheFilePath()Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "outputFile":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 783
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 784
    .local v0, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .local v7, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {p0, v7}, Lorg/gnucash/android/export/xml/GncXmlExporter;->generateExport(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 791
    if-eqz v7, :cond_2

    .line 793
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 800
    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v3, "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    return-object v3

    .line 794
    .end local v3    # "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v9, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v8, v9, v1}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v8

    .line 787
    .end local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v2

    .line 788
    .local v2, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v8, "Error exporting XML"

    invoke-static {v8}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 789
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 791
    if-eqz v6, :cond_0

    .line 793
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 794
    :catch_2
    move-exception v1

    .line 795
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v8, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v9, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v8, v9, v1}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v8

    .line 791
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_1

    .line 793
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 795
    :cond_1
    throw v8

    .line 794
    :catch_3
    move-exception v1

    .line 795
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v8, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v9, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v8, v9, v1}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v8

    .line 791
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v0    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 787
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_1

    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    :cond_2
    move-object v6, v7

    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method

.method public generateExport(Ljava/io/Writer;)V
    .locals 14
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    .line 813
    const/16 v8, 0xd

    :try_start_0
    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "gnc"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "act"

    aput-object v9, v3, v8

    const/4 v8, 0x2

    const-string v9, "book"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const-string v9, "cd"

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-string v9, "cmdty"

    aput-object v9, v3, v8

    const/4 v8, 0x5

    const-string v9, "price"

    aput-object v9, v3, v8

    const/4 v8, 0x6

    const-string v9, "slot"

    aput-object v9, v3, v8

    const/4 v8, 0x7

    const-string v9, "split"

    aput-object v9, v3, v8

    const/16 v8, 0x8

    const-string v9, "trn"

    aput-object v9, v3, v8

    const/16 v8, 0x9

    const-string v9, "ts"

    aput-object v9, v3, v8

    const/16 v8, 0xa

    const-string v9, "sx"

    aput-object v9, v3, v8

    const/16 v8, 0xb

    const-string v9, "bgt"

    aput-object v9, v3, v8

    const/16 v8, 0xc

    const-string v9, "recurrence"

    aput-object v9, v3, v8

    .line 815
    .local v3, "namespaces":[Ljava/lang/String;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 817
    .local v5, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 821
    :goto_0
    :try_start_2
    invoke-interface {v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 822
    const-string v8, "utf-8"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 824
    const/4 v8, 0x0

    const-string v9, "gnc-v2"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    array-length v9, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v4, v3, v8

    .line 826
    .local v4, "ns":Ljava/lang/String;
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "xmlns:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://www.gnucash.org/XML/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 829
    .end local v4    # "ns":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 830
    const/4 v8, 0x0

    const-string v9, "cd:type"

    const-string v10, "book"

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    const-string v8, "1"

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 834
    const/4 v8, 0x0

    const-string v9, "gnc:book"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 835
    const/4 v8, 0x0

    const-string v9, "version"

    const-string v10, "2.0.0"

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    const/4 v8, 0x0

    const-string v9, "book:id"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    const/4 v8, 0x0

    const-string v9, "type"

    const-string v10, "guid"

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    const/4 v8, 0x0

    const-string v9, "book:id"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    iget-object v8, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v8}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCommoditiesInUse()Ljava/util/List;

    move-result-object v0

    .line 843
    .local v0, "commodities":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Commodity;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 844
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "XXX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 845
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 843
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 848
    :cond_2
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    const/4 v8, 0x0

    const-string v9, "cd:type"

    const-string v10, "commodity"

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 853
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    const/4 v8, 0x0

    const-string v9, "cd:type"

    const-string v10, "account"

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getRecordsCount()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    const/4 v8, 0x0

    const-string v9, "cd:type"

    const-string v10, "transaction"

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v9}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecordsCount()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    iget-object v8, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    invoke-virtual {v8}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getRecordsCount()J

    move-result-wide v6

    .line 864
    .local v6, "priceCount":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 865
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    const/4 v8, 0x0

    const-string v9, "cd:type"

    const-string v10, "price"

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    const/4 v8, 0x0

    const-string v9, "gnc:count-data"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    :cond_3
    invoke-direct {p0, v5, v0}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportCommodities(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 873
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    .line 874
    invoke-direct {p0, v5}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportPrices(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 877
    :cond_4
    invoke-direct {p0, v5}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportAccounts(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 879
    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportTransactions(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 882
    iget-object v8, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v8}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTemplateTransactionsCount()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 883
    const/4 v8, 0x0

    const-string v9, "gnc:template-transactions"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportTransactions(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 885
    const/4 v8, 0x0

    const-string v9, "gnc:template-transactions"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    :cond_5
    invoke-direct {p0, v5}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportScheduledTransactions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 891
    invoke-direct {p0, v5}, Lorg/gnucash/android/export/xml/GncXmlExporter;->exportBudgets(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 893
    const/4 v8, 0x0

    const-string v9, "gnc:book"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    const/4 v8, 0x0

    const-string v9, "gnc-v2"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 896
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 901
    return-void

    .line 897
    .end local v0    # "commodities":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Commodity;>;"
    .end local v2    # "i":I
    .end local v3    # "namespaces":[Ljava/lang/String;
    .end local v5    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "priceCount":J
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 899
    new-instance v8, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v9, p0, Lorg/gnucash/android/export/xml/GncXmlExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v8, v9, v1}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v8

    .line 818
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "namespaces":[Ljava/lang/String;
    .restart local v5    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method public getExportMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    const-string v0, "text/xml"

    return-object v0
.end method
