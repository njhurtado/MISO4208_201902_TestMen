.class Lcom/tech/freak/wizardpager/ui/GeoFragment$1;
.super Landroid/os/AsyncTask;
.source "GeoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/GeoFragment;->updateLocationLabel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

.field final synthetic val$latitude:D

.field final synthetic val$locationString:Ljava/lang/String;

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/GeoFragment;DDLjava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

    iput-wide p2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$latitude:D

    iput-wide p4, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$longitude:D

    iput-object p6, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$locationString:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

    invoke-static {v1}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->access$100(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/location/Geocoder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$latitude:D

    iget-wide v4, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 163
    .local v8, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 166
    .local v0, "address":Landroid/location/Address;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    .end local v0    # "address":Landroid/location/Address;
    .end local v8    # "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->access$200(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

    sget v2, Lcom/tech/freak/wizardpager/R$string;->geo_status_location:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$locationString:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->access$000(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->access$200(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->val$longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/GeoFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->access$000(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    return-void
.end method
