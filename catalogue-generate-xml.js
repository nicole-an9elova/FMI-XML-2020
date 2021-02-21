var doc = new ActiveXObject("MSXML.DOMDocument");

var pi = doc.createProcessingInstruction("xml", "version=\"1.0\" encoding=\"UTF-8\"");
doc.appendChild(pi);

var catalogue = doc.createElement('catalogue');
doc.appendChild(catalogue);

var name = doc.createElement('name');
catalogue.appendChild(name);
name.appendChild(doc.createTextNode('GIBSON'));

var products = doc.createElement('products');
catalogue.appendChild(products);

var product = doc.createElement('product');
products.appendChild(product);
product.setAttribute('certificate', 'Yes');
product.setAttribute('returns', 'Yes');

var nameOfTheProduct = doc.createElement('nameOfTheProduct');
product.appendChild(nameOfTheProduct);
nameOfTheProduct.appendChild(doc.createTextNode('Gibson SG Junior'));


var picture = doc.createElement('picture');
product.appendChild(picture);
picture.appendChild(doc.createTextNode('images/gibson_sg_junior.jpg'));
picture.setAttribute('size', '2'); //izpolzvam chisloo vremenno
picture.setAttribute('pictureAltText', 'Photo of a Gibson SG Junior Vintage Cherry guitar.');


var descriptionOfProduct = doc.createElement('descriptionOfProduct');
product.appendChild(descriptionOfProduct);
descriptionOfProduct.appendChild(doc.createTextNode('Наскоро освеженият SG Junior се завръща с по-точен класически дизайн от 60-те години, който го направи актуален и обичан - оформяйки звук, който да се носи през поколенията и жанровете музика. Моделът е оборудван с мощния единичен пикап dogear P-90 с ръчно управление и оранжев кондензатор. Тунерите в стил Vintage Deluxe с бели бутони и компенсиран обвиващ мост също допринасят за простотата, функциалността и солидния тон.'));

var features = doc.createElement('features');
product.appendChild(features);

var body = doc.createElement('body');
features.appendChild(body);

var bodyMaterial = doc.createElement('bodyMaterial');
body.appendChild(bodyMaterial);
bodyMaterial.appendChild(doc.createTextNode('Махагон'));

var bodyShape = doc.createElement('bodyShape');
body.appendChild(bodyShape);
bodyShape.appendChild(doc.createTextNode('ДВ'));

var bodyFinish = doc.createElement('bodyFinish');
body.appendChild(bodyFinish);
bodyFinish.appendChild(doc.createTextNode('Гланцов нитроцелулозен лак'));

var neck = doc.createElement('neck');
features.appendChild(neck);

var neckMaterial = doc.createElement('neckMaterial');
neck.appendChild(neckMaterial);
neckMaterial.appendChild(doc.createTextNode('Махагон'));

var neckFinish = doc.createElement('neckFinish');
neck.appendChild(neckFinish);
neckFinish.appendChild(doc.createTextNode('X'));

var neckShape = doc.createElement('neckShape');
neck.appendChild(neckShape);
neckShape.appendChild(doc.createTextNode('Тънък конус'));

var scaleLength = doc.createElement('scaleLength');
neck.appendChild(scaleLength);
scaleLength.appendChild(doc.createTextNode('24.75" / 628.65mm'));

var fingerboardMaterial = doc.createElement('fingerboardMaterial');
neck.appendChild(fingerboardMaterial);
fingerboardMaterial.appendChild(doc.createTextNode('Palmovoo'));

var fingerboardRadius = doc.createElement('fingerboardRadius');
neck.appendChild(fingerboardRadius);
fingerboardRadius.appendChild(doc.createTextNode('12"'));

var numberOfFrets = doc.createElement('numberOfFrets');
neck.appendChild(numberOfFrets);
numberOfFrets.appendChild(doc.createTextNode('22'));

var fretSize = doc.createElement('fretSize');
neck.appendChild(fretSize);
fretSize.appendChild(doc.createTextNode('Medium Jumbo'));

var nutMaterial = doc.createElement('nutMaterial');
neck.appendChild(nutMaterial);
nutMaterial.appendChild(doc.createTextNode('Графика Тех'));

var nutWidth = doc.createElement('nutWidth');
neck.appendChild(nutWidth);
nutWidth.appendChild(doc.createTextNode('1.69" / 43.05mm'));

var positionInlays = doc.createElement('positionInlays');
neck.appendChild(positionInlays);
positionInlays.appendChild(doc.createTextNode('Акрилни точки'));

var trussRod = doc.createElement('trussRod');
neck.appendChild(trussRod);
trussRod.appendChild(doc.createTextNode('X'));

var electronics = doc.createElement('electronics');
features.appendChild(electronics);

var neckPickup = doc.createElement('neckPickup');
electronics.appendChild(neckPickup);
neckPickup.appendChild(doc.createTextNode('P-90 Dog Ear'));

var controls = doc.createElement('controls');
electronics.appendChild(controls);
controls.appendChild(doc.createTextNode('1 обем, 1 тон (ръчно свързан с оранжеви кондензатори)'));

var switching = doc.createElement('switching');
electronics.appendChild(switching);
switching.appendChild(doc.createTextNode('X'));

var configuration = doc.createElement('configuration');
electronics.appendChild(configuration);
configuration.appendChild(doc.createTextNode('SS'));

var hardware = doc.createElement('hardware');
features.appendChild(hardware);

var bridge = doc.createElement('bridge');
hardware.appendChild(bridge);
bridge.appendChild(doc.createTextNode('Компенсирана обвивка'));

var hardwareFinish = doc.createElement('hardwareFinish');
hardware.appendChild(hardwareFinish);
hardwareFinish.appendChild(doc.createTextNode('Никел'));

var tuningMachines = doc.createElement('tuningMachines');
hardware.appendChild(tuningMachines);
tuningMachines.appendChild(doc.createTextNode('Не'));

var pickguard = doc.createElement('pickguard');
hardware.appendChild(pickguard);
pickguard.appendChild(doc.createTextNode('Black 5-ply'));

var controlKnobs = doc.createElement('controlKnobs');
hardware.appendChild(controlKnobs);
controlKnobs.appendChild(doc.createTextNode('Черни шапки'));

var neckPlate = doc.createElement('neckPlate');
hardware.appendChild(neckPlate);
neckPlate.appendChild(doc.createTextNode('Не'));

var miscellaneous = doc.createElement('miscellaneous');
features.appendChild(miscellaneous);

var strings = doc.createElement('strings');
miscellaneous.appendChild(strings);
strings.appendChild(doc.createTextNode('.010, .013, .017, .026, .036, .046'));

var legalNotice = doc.createElement('legalNotice');
miscellaneous.appendChild(legalNotice);
legalNotice.appendChild(doc.createTextNode('WARNING: Cancer and Reproductive Harm - www.P65Warnings.ca.gov.'));

var accessories = doc.createElement('accessories');
features.appendChild(accessories);
accessories.setAttribute('gigBag', 'Yes');
accessories.setAttribute('guitarPicks', '5-original');

var warranty = doc.createElement('warranty');
product.appendChild(warranty);
warranty.appendChild(doc.createTextNode('warranty.pdf')); //add files

var price = doc.createElement('price');
product.appendChild(price);
price.appendChild(doc.createTextNode('1339.00 $'));

var version = doc.createElement('version');
product.appendChild(version);
version.appendChild(doc.createTextNode('Gibson SG Junior 2020 Vintage Cherry'));

doc.save("catalogue_dom.xml");





