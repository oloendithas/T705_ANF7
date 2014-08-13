.class Lcom/nuance/connect/internal/ResourcesServiceInternal$4;
.super Ljava/lang/Object;
.source "ResourcesServiceInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/internal/ResourcesServiceInternal;->processResourcesXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$processing:Ljava/util/HashMap;

.field final synthetic val$queue:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iput-object p2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$queue:Landroid/os/Handler;

    iput-object p4, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$processing:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 284
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "starting to process resource file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 286
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    .local v3, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$queue:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 291
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 292
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    if-ne v7, v10, :cond_6

    .line 294
    const-string v7, "string"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 295
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "tag":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 297
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 300
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$processing:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 303
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 321
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_2
    iget-object v8, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$queue:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    throw v7
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 326
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processResourcesXML.XmlPullParserException ex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 333
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 336
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finished processing resource file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 337
    return-void

    .line 306
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :cond_3
    :try_start_4
    const-string v7, "plurals"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 308
    const/4 v6, 0x4

    .line 309
    .local v6, "type":I
    const/4 v0, 0x1

    .line 310
    .local v0, "count":I
    :cond_4
    :goto_2
    if-lez v0, :cond_0

    .line 311
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    .line 312
    if-ne v6, v11, :cond_5

    .line 313
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 314
    :cond_5
    if-ne v6, v10, :cond_4

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 321
    .end local v0    # "count":I
    .end local v6    # "type":I
    :cond_6
    :try_start_5
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$queue:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    if-eqz v3, :cond_7

    .line 323
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 332
    :cond_7
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 333
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 329
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    .line 330
    .local v1, "ex":Ljava/io/IOException;
    :try_start_6
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processResourcesXML.IOException ex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 332
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 333
    iget-object v7, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v7}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 332
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_8

    .line 333
    iget-object v8, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v8}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_8
    throw v7
.end method
