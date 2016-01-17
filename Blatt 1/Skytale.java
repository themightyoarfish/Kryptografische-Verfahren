public class Skytale {

    private static String encryptSkytale(String klartext, int key) {
        String kryptotext = "";
        int w = (int) Math.ceil(klartext.length() / (double) key);
        while (klartext.length() < key * w - 1) {
            klartext += " ";
        }
        for (int i = 0; i < klartext.length(); i++) {
            int pos = ((i % key) * w) + i / key;
            kryptotext += klartext.charAt(pos);
        }
        return kryptotext;
    }

    public static void main(String... args) {
        System.out.println(
          encryptSkytale("PIESKYTALEISTEINTRANSPOSITIONSVERFAHREN", 5)
        );
    }

}
