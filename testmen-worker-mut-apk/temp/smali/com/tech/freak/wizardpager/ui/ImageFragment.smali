.class public Lcom/tech/freak/wizardpager/ui/ImageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageFragment.java"


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"

.field private static final CAMERA_REQUEST_CODE:I = 0x1

.field private static final GALLERY_REQUEST_CODE:I = 0x0

.field private static final NEW_IMAGE_URI:Ljava/lang/String; = "new_image_uri"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

.field private mKey:Ljava/lang/String;

.field private mNewImageUri:Landroid/net/Uri;

.field private mPage:Lcom/tech/freak/wizardpager/model/Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tech/freak/wizardpager/ui/ImageFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/ImageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tech/freak/wizardpager/ui/ImageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/ImageFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    return-object p1
.end method

.method public static create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/ImageFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/tech/freak/wizardpager/ui/ImageFragment;

    invoke-direct {v1}, Lcom/tech/freak/wizardpager/ui/ImageFragment;-><init>()V

    .line 45
    .local v1, "f":Lcom/tech/freak/wizardpager/ui/ImageFragment;
    invoke-virtual {v1, v0}, Lcom/tech/freak/wizardpager/ui/ImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method private writeResult()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_"

    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/Page;->notifyDataChanged()V

    .line 197
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 173
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 179
    invoke-direct {p0}, Lcom/tech/freak/wizardpager/ui/ImageFragment;->writeResult()V

    goto :goto_0

    .line 183
    :pswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 184
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    .line 185
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 186
    invoke-direct {p0}, Lcom/tech/freak/wizardpager/ui/ImageFragment;->writeResult()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 157
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement PageFragmentCallbacks"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    check-cast p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mKey:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;->onGetPage(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v2

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v2, "new_image_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    .line 63
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    sget v3, Lcom/tech/freak/wizardpager/R$layout;->fragment_page_image:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v4}, Lcom/tech/freak/wizardpager/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget v3, Lcom/tech/freak/wizardpager/R$id;->imageView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->imageView:Landroid/widget/ImageView;

    .line 83
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "imageData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    .local v1, "imageUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 91
    .end local v1    # "imageUri":Landroid/net/Uri;
    :goto_0
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->imageView:Landroid/widget/ImageView;

    new-instance v4, Lcom/tech/freak/wizardpager/ui/ImageFragment$1;

    invoke-direct {v4, p0}, Lcom/tech/freak/wizardpager/ui/ImageFragment$1;-><init>(Lcom/tech/freak/wizardpager/ui/ImageFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object v2

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->imageView:Landroid/widget/ImageView;

    sget v4, Lcom/tech/freak/wizardpager/R$drawable;->ic_person:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 169
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "new_image_uri"

    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment;->mNewImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method
