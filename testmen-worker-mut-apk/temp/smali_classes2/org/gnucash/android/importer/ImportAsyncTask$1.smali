.class Lorg/gnucash/android/importer/ImportAsyncTask$1;
.super Ljava/lang/Object;
.source "ImportAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/importer/ImportAsyncTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/importer/ImportAsyncTask;

.field final synthetic val$err_msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/gnucash/android/importer/ImportAsyncTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/importer/ImportAsyncTask;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/gnucash/android/importer/ImportAsyncTask$1;->this$0:Lorg/gnucash/android/importer/ImportAsyncTask;

    iput-object p2, p0, Lorg/gnucash/android/importer/ImportAsyncTask$1;->val$err_msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lorg/gnucash/android/importer/ImportAsyncTask$1;->this$0:Lorg/gnucash/android/importer/ImportAsyncTask;

    invoke-static {v0}, Lorg/gnucash/android/importer/ImportAsyncTask;->access$000(Lorg/gnucash/android/importer/ImportAsyncTask;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/gnucash/android/importer/ImportAsyncTask$1;->this$0:Lorg/gnucash/android/importer/ImportAsyncTask;

    .line 95
    invoke-static {v2}, Lorg/gnucash/android/importer/ImportAsyncTask;->access$000(Lorg/gnucash/android/importer/ImportAsyncTask;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f01f8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/importer/ImportAsyncTask$1;->val$err_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 94
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method
