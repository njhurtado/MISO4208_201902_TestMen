.class public Lorg/gnucash/android/importer/ImportAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImportAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private mDelegate:Lorg/gnucash/android/ui/util/TaskDelegate;

.field private mImportedBookUID:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/gnucash/android/ui/util/TaskDelegate;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "delegate"    # Lorg/gnucash/android/ui/util/TaskDelegate;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mDelegate:Lorg/gnucash/android/ui/util/TaskDelegate;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/importer/ImportAsyncTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/importer/ImportAsyncTask;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 81
    .local v6, "accountInputStream":Ljava/io/InputStream;
    invoke-static {v6}, Lorg/gnucash/android/importer/GncXmlImporter;->parse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mImportedBookUID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 104
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "_display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 106
    .local v12, "nameIndex":I
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "displayName":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "uri"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mImportedBookUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 112
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 116
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v12    # "nameIndex":I
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mImportedBookUID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    const v2, 0x7f0f00bb

    .line 118
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .end local v6    # "accountInputStream":Ljava/io/InputStream;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v11

    .line 84
    .local v11, "exception":Ljava/lang/Exception;
    const-class v0, Lorg/gnucash/android/importer/ImportAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 86
    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "err_msg":Ljava/lang/String;
    invoke-static {v10}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    new-instance v1, Lorg/gnucash/android/importer/ImportAsyncTask$1;

    invoke-direct {v1, p0, v10}, Lorg/gnucash/android/importer/ImportAsyncTask$1;-><init>(Lorg/gnucash/android/importer/ImportAsyncTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/importer/ImportAsyncTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "importSuccess"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 127
    :try_start_0
    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    iput-object v2, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 136
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0f0205

    .line 137
    .local v0, "message":I
    :goto_1
    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 139
    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mImportedBookUID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mImportedBookUID:Ljava/lang/String;

    invoke-static {v1}, Lorg/gnucash/android/util/BookUtils;->loadBook(Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mDelegate:Lorg/gnucash/android/ui/util/TaskDelegate;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mDelegate:Lorg/gnucash/android/ui/util/TaskDelegate;

    invoke-interface {v1}, Lorg/gnucash/android/ui/util/TaskDelegate;->onTaskComplete()V

    .line 144
    :cond_2
    return-void

    .line 129
    .end local v0    # "message":I
    :catch_0
    move-exception v1

    .line 133
    iput-object v2, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    throw v1

    .line 136
    :cond_3
    const v0, 0x7f0f01f8

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/importer/ImportAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 64
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 65
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f01d2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 66
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 67
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 68
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 71
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 75
    return-void
.end method
