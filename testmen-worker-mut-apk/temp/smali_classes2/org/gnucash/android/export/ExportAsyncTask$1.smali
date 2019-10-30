.class Lorg/gnucash/android/export/ExportAsyncTask$1;
.super Ljava/lang/Object;
.source "ExportAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/export/ExportAsyncTask;->doInBackground([Lorg/gnucash/android/export/ExportParams;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/export/ExportAsyncTask;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lorg/gnucash/android/export/ExportAsyncTask;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/export/ExportAsyncTask;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/gnucash/android/export/ExportAsyncTask$1;->this$0:Lorg/gnucash/android/export/ExportAsyncTask;

    iput-object p2, p0, Lorg/gnucash/android/export/ExportAsyncTask$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 153
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask$1;->this$0:Lorg/gnucash/android/export/ExportAsyncTask;

    invoke-static {v0}, Lorg/gnucash/android/export/ExportAsyncTask;->access$000(Lorg/gnucash/android/export/ExportAsyncTask;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask$1;->this$0:Lorg/gnucash/android/export/ExportAsyncTask;

    .line 154
    invoke-static {v2}, Lorg/gnucash/android/export/ExportAsyncTask;->access$000(Lorg/gnucash/android/export/ExportAsyncTask;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f01f9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/gnucash/android/export/ExportAsyncTask$1;->this$0:Lorg/gnucash/android/export/ExportAsyncTask;

    invoke-static {v5}, Lorg/gnucash/android/export/ExportAsyncTask;->access$100(Lorg/gnucash/android/export/ExportAsyncTask;)Lorg/gnucash/android/export/ExportParams;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/export/ExportParams;->getExportFormat()Lorg/gnucash/android/export/ExportFormat;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask$1;->val$e:Ljava/lang/Exception;

    .line 155
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method
